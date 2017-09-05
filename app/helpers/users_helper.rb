module UsersHelper
  def user_avatar(user)
    facebook_url = current_user.facebook_picture_url.split("?")[0] + "?type=large"
    if user.photo.present?
      cl_image_path(user.photo.path)
    elsif facebook_url
      facebook_url
      # Google has the same path
    else
      "http://res.cloudinary.com/eatupclub/image/upload/v1504254820/Logo_v1_ioepmg.png"
    end
  end
end
