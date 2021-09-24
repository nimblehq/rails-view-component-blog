class Article < ApplicationRecord
  has_many :comments

  has_one_attached :avatar

  validates :title, presence: true
  has_rich_text :content
end
