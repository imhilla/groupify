module LikesHelper
  def check_likes(article)
    if article.likes.size.positive?
    end
  end

  def like_btn(article, page)
    @like = Like.find_by(article: article, user: current_user)
    button_to('', article_likes_path(article_id: article.id, page: page), method: :post, class: 'like-button-dynamic')
  end
end
