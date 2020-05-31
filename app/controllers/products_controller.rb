class ProductsController < ApplicationController
  before_action :find_product, only: %i[show edit update destroy]

  def index
    if params[:query].present?

       sql_query = " \
        products.name @@ :query \
        OR products.description @@ :query \
        OR personality_types.name @@ :query \
        OR personality_types.description @@ :query \
      "
        # OR categories.name ILIKE :query \
      @products = Product.joins(:personality_type).where(sql_query, query: "%#{params[:query]}%")
    else
      @products = Product.all
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    @product.save
    redirect_to product_path(@product)
  end

  def show; end

  def edit; end

  def update
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :amount, :category_id, :personality_type_id)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
