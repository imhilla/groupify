class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(article_id: params[:article_id])
    @like.save
  end
end
