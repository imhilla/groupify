class AddColumnToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :amount, :integer
  end
end
