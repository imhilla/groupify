class AncientsController < ApplicationController
  def index
    @most_ancient = Article.order("created_at asc")
  end
end
