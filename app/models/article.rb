class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :group, optional: true
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true
  validates_length_of :title, minimum: 5, maximum: 60
  validates_length_of :body, minimum: 5, maximum: 300

end
