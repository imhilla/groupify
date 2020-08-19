class Comment < ApplicationRecord
  belongs_to :article
  validates :title, presence: true
  validates :body, presence: true
end
