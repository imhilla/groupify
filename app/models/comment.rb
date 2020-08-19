class Comment < ApplicationRecord
  belongs_to :article, dependent: :destroy
  validates :user_name, presence: true
  validates :body, presence: true
end
