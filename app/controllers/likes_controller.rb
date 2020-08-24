class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(article_id: params[:article_id])
    @like.save

    redirect_to articles_path
  end
end
