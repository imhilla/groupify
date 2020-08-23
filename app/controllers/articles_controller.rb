class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @recents = Article.order('created_at desc')
    @users_articles = Article.all.where("author_id =?", current_user.id)
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

    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :icon)
  end
end
