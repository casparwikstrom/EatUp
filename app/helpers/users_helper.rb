module UsersHelper
  def user_avatar(user)
    if user.photo.present?
      cl_image_path(user.photo.path)
    elsif user.facebook_picture_url
      user.facebook_picture_url.split("?")[0] + "?type=large"
      # Google has the same path
    else
      "http://res.cloudinary.com/eatupclub/image/upload/v1504254820/Logo_v1_ioepmg.png"
    end
  end
end
