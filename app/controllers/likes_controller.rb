class LikesController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @article.likes.create(user_id: current_user.id)

    redirect_to article_path(@article)
  end
end
