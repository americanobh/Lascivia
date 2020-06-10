class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_order

  def set_order
    if current_user
      @current_order = current_user.order
    end
  end
end
