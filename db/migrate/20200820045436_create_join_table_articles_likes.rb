class CreateJoinTableArticlesLikes < ActiveRecord::Migration[5.2]
  def change
    create_join_table :articles, :likes do |t|
      t.index [:article_id, :like_id]
      # t.index [:like_id, :article_id]
    end
  end
end
