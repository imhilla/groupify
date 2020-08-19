class CommentsController < ApplicationController
  def new
    user = current_user.id
    @comment = Comment.new(article_id: params[:article_id])
    @article = Article.find(params[:article_id])
  end
  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    @comment.user_name = current_user.username
    @comment.user_id = current_user.id
    @comment.save

    redirect_to article_path(@comment.article)
  end

  def comment_params
    params.require(:comment).permit(:user_name, :user_id, :body)
  end
end
