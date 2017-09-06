class PaymentsController < ApplicationController
 before_action :set_order

  def new
    authorize @order
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
      )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @order.amount_cents, # or amount_pennies
      description:  "Payment for popup #{@order.popup.title}",
      currency:     @order.amount.currency
      )

    @order.update(payment: charge.to_json, state: 'paid')
    redirect_to order_path(@order)
     OrderMailer.payment_confirmation(@order).deliver_now
     PopupMailer.userorder_confirmation(@order.popup).deliver_now

      # OrderMailer.creation_confirmation(@order).deliver_now

    authorize @order

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_order_payment_path(@order)
  end

  private

  def set_order
    @order = Order.where(state: 'pending').find(params[:order_id])
  end
end
