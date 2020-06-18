class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_order

  def set_order
    if current_user
      @current_order = Order.find_or_create_by(user: current_user, open: true)
    end
  end
end
