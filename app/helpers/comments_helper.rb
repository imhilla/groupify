module CommentsHelper
  def comment_user(comment)
    image_tag User.find(comment.user_id).image.url(:medium), :class => 'comment-icon'
  end

  def comment_name(comment)
    User.find(comment.user_id).name
  end

  def comment_username(comment)
    comment.user_name
  end
end
