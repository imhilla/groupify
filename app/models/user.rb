class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_attached_file :image, styles: { large: '600x600>', medium: '300x300>', thumb: '150x150#' }
  has_attached_file :image
  has_many :likes, dependent: :destroy
  validates_attachment_content_type :image, content_type: %r{\Aimage/.*\z}

  def thumbnail(input)
    images[input].variant(resize: '300x300!').processed
  end
end
