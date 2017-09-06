class PopupMailer < ApplicationMailer
  def creation_confirmation(popup)

    @order = popup

    mail(
      to:       @order.popup.user.email,
      subject:  "popup #{@order.popup.title} created!"
    )
  end

  def userorder_confirmation(popup)

    @popup = popup

    mail(
      to:       @popup.user.email,
      subject:  "popup #{@popup.title} created!"
    )
  end
end
