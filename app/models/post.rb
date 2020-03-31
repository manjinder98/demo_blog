class Post < ApplicationRecord
  validates :title, :content, presence: true
  validates :title, length: { maximum: 60, too_long: "%{count} characters is the maximum allowed" }, uniqueness: true
  has_many :comments, dependent: :destroy
end