class CommentsController < ApplicationController
  before_action :set_article

  def new
    @comment = Comment.new(article_id: params[:article_id])
    @article = Article.find(params[:article_id])
  end

  def create
    @comment = current_user.comments.build(comment_params)
    @comment.article_id = params[:article_id]

    if @comment.save
      redirect_to article_path(@comment.article)
    else
      render :new
    end
  end

  def set_article
    @article = Article.find(params[:article_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:user_name, :user_id, :body, :author_name)
  end
end
