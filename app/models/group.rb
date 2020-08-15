class Group < ApplicationRecord
  has_many :groupings
  has_many :posts, through: :groupings
  def to_s
    name
  end
end
