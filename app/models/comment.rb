class Comment < ApplicationRecord
  validates :name, :comment, presence: true
  validates :name, length: { maximum: 20, too_long: "%{count} characters is the maximum allowed" }, uniqueness: true
  belongs_to :post
end
