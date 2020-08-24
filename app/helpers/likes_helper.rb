module LikesHelper
  def check_likes(article)
    if article.likes.size.positive?
    end
  end

  def like_btn(article)
    like = Like.find_by(article: article, user: current_user)
    button_to('Like!', article_likes_path(article_id: article.id), method: :post)
  end
end
