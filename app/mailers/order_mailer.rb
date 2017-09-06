class OrderMailer < ApplicationMailer
  def payment_confirmation(popup)

    @order = popup

    mail(
      to:       @order.popup.user.email,
      subject:  "popup #{@order.popup.title} created!"
      )
  end
end
