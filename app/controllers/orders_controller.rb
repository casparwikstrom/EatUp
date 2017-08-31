class OrdersController < ApplicationController
  before_action :set_order, only: [:destroy]

  def index
    @orders = policy_scope(Order).order(created_at: :desc)
  end


  def show
    @order = Order.where(state: 'paid').find(params[:id])
    authorize @order
  end

  def new
    @order = Order.new
    authorize @order
  end

  def create




    popup = Popup.find(params[:popup_id])
    @order  = Order.create!(popup_sku: popup.sku, amount: popup.price, state: 'pending')
    authorize @order
    redirect_to new_order_payment_path(@order)
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
    params.permit(:ordered_seats, :pledge_id, :amount, :is_donation, :state, :popup_sku, :amount_cents, :payment)
  end

end
