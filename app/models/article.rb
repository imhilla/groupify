class Article < ApplicationRecord
  belongs_to :author, class_name: 'User', dependent: :destroy
  belongs_to :group, dependent: :destroy, optional: true
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true
end
