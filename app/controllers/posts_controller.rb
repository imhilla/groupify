class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comment.post_id = @post.id
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save

    redirect_to post_path(@post)
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
