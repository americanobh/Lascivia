class OrderItemsController < ApplicationController
  before_action :set_product, only: [ :create ]

  def index
    @order_items = OrderItem.all
  end

  def create
    if current_user.orders.present?
      @order = current_user.orders.last
    else
      @order = current_user.orders.new
    end
    @order.save
    @order_item = @order.order_items.new #(order_item_params)
    @order_item.product = @product
    @order_item.save
    redirect_to orders_path
  end

  private

  def order_item_params
    params.require(:order_item).permit(:product_id)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end

# 1 - Checar se o user ja tem algum Order
# 2 - if true, pegar current_order e add newProduct
# 3 - if false, create Order.new and add newProduct
# 4 -
