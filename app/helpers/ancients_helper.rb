module AncientsHelper
  def like_btn_ancient(article)
    @like = Like.find_by(article: article, user: current_user)
    button_to('', article_likes_path(article_id: article.id), method: :post, class: 'like-button-dynamic')
  end
end
