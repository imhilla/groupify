class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @most_recent = Article.order('created_at desc')
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
    @comment.article_id = @article.id
  end

  def new
    @article = Article.new
    @groups = Group.all
  end

  def create
    @article = Article.new(article_params)
    @article.author = current_user
    @article.save

    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :icon ,groups_attributes: [ :id ])
  end
end
