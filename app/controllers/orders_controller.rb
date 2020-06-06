class OrdersController < ApplicationController
    protect_from_forgery except: :index

  def index
    @orders =  @current_order.order_items
    respond_to do |format|
      format.js { render json: @orders }
    end
  end

  def show
    @order = Order.find(params[:id])
  end
end
