class PopupMailer < ApplicationMailer
  def creation_confirmation(popup)

    @order = popup

    mail(
      to:       @order.popup.user.email,
      subject:  "popup #{@order.popup.title} created!"
    )
  end
end
