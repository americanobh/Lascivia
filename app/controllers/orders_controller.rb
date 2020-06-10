class OrdersController < ApplicationController
    protect_from_forgery except: :index

  def index
    @orders =  @current_order.order_items
    @total_sum = 0
    @orders.each do |order_item|
      sum = order_item.quantity * order_item.product.price
      @total_sum += sum
    end
    respond_to do |format|
      format.json #{ render json: @orders }
    end
  end

  def show
    @order = Order.find(params[:id])
  end
end
