class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :destroy]

  def index
    @orders = policy_scope(Order).order(created_at: :desc)
  end

  def show
  end

  def new
    @order = Order.new
    authorize @order
  end

  def create
    authorize @order
    @order = Order.new(order_params)
    if @order.save
      redirect_to order_path
    else
      render :new
    end
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to root_path, alert: 'Order was successfully canceled.' }
      format.json { head :no_content }
    end
  end


  private

  def set_order
    @order = Order.find(params[:id])
    authorize @order
  end

  def order_params
    params.require(:order).permit(:ordered_seats, :pledge_id,
      :popup_id, :user_id)
  end

end
