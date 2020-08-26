class AddColumnsToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :group_id, :string
    add_column :articles, :—force, :string
  end
end
