module AncientsHelper
  def like_btn_ancient(article, page)
    @like = Like.find_by(article: article, user: current_user)
    button_to('', article_likes_path(article_id: article.id, page: page), method: :post, class: 'like-button-dynamic')
  end
end
