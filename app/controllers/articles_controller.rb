class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
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
