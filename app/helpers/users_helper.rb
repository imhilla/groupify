module UsersHelper
  def logged_user
    User.where('id =?', current_user.id)
  end

  def user_image(user)
    image_tag user.image.url(:medium), class: 'sidebar-image'
  end

  def user_name(user)
    user.name
  end

  def user_username(user)
    user.username
  end

  def user_current_user
    User.where('id =?', current_user.id)
  end
end
