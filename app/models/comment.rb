class Comment < ApplicationRecord
  belongs_to :post
  validates :name, :comment, presence: true
  validates :name, length: { maximum: 20, too_long: "%{count} characters is the maximum allowed" }, uniqueness: { scope: :post}

  rails_admin do
    configure :post do
      label 'Post'
    end
  end
end
