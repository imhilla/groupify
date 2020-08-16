class Group < ApplicationRecord
  has_many :articles
  has_attached_file :icon, styles: { large: '600x600>', medium: '300x300>', thumb: '150x150#' }
  has_many_attached :icons
  validates_attachment_content_type :icon, content_type: %r{\Aimage/.*\z}

  def thumbnail(input)
    icons[input].variant(resize: '300x300!').processed
  end
end
