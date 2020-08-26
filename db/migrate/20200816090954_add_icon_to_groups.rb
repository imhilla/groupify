class AddIconToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :icon, :string
  end
end
