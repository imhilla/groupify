module PostsHelper
  def post_params
    params.require(:post).permit(:title, :body, :group_list)
  end
end
