class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @most_recent = Article.order("created_at asc")
    @most_ancient = Article.order("created_at desc")
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
    @comment.article_id = @article.id
  end

  def new
    @article = Article.new
    @groups = Group.all.map { |c| [c.name, c.id] }
  end

  def create
    @article = Article.new(article_params)
    @article.group_id = params[:group_id]
    @article.author = current_user
    @article.save

    redirect_to article_path(@article)
  end

  def article_params
    params.require(:article).permit(:title, :body, :icon)
  end
end
