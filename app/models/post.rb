class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_many :groupings
  has_many :groups, through: :groupings
  
  def group_list
    self.groups.collect do |group|
      group.name
    end.join(", ")
  end
end
