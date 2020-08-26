class AddColumnToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :author_id, :integer
  end
end
