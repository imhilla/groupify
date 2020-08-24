class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :group, optional: true
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true
  validates_length_of :body, minimum: 5, maximum: 300
end
