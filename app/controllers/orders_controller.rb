class OrdersController < ApplicationController
  before_action :set_order, only: [:destroy]

  def index
    @orders = policy_scope(current_user.orders).order(created_at: :desc)
  end


  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
    authorize @order
  end

  def new
    @order = Order.new
    @popup = Popup.find(params[:popup_id])
    authorize @order
  end

  def create
    @user = current_user
    popup = Popup.find(params[:popup_id])
    # @order  = Order.create!(popup_sku: popup.sku, amount: popup.price, state: 'pending')
    @order = Order.new(order_params)
    @order.user = @user
    @order.popup = popup

    if @order.is_donation
      @order.amount
    else
      @order.amount = popup.price * @order.ordered_seats
    end

    @order.state = "pending"
    authorize @order

    if @order.save
      redirect_to new_order_payment_path(@order)
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
    @order = current_user.orders.find(params[:id])
    authorize @order
  end


  def order_params
    params.require(:order).permit(:ordered_seats, :user_id, :popup_id, :amount, :state)
  end

end
