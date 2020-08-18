class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :group
  has_many :comments
  has_many :likes, dependent: :destroy
end
