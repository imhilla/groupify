class AddAttachmentIconToGroups < ActiveRecord::Migration[5.2]
  def self.up
    change_table :groups do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :groups, :icon
  end
end
