class Comment < ApplicationRecord
  belongs_to :article
  validates :body, presence: true
  belongs_to :user
end
