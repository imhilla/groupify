class AddColumnToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :user_name, :string
  end
end
