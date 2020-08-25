class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(article_id: params[:article_id])
    @like.save
    if params[:page] == 'externals/index'
      redirect_to externals_path
    elsif params[:page] == 'articles/index'
      redirect_to articles_path
    elsif params[:page] == 'ancients/index'
      redirect_to ancients_path
    elsif params[:page] == 'user'
      redirect_to user_path(current_user)
    else
      article_id = params[:article_id]
      redirect_to article_url(article_id)
    end
  end
end
