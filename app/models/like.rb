class Like < ApplicationRecord
  validates :user_id, uniqueness: { scope: :article_id }

  belongs_to :user, dependent: :destroy
  belongs_to :article, dependent: :destroy
end
