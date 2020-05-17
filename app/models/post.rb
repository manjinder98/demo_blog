class Post < ApplicationRecord
  has_many :comments, dependent: :destroy, index_errors: true
  accepts_nested_attributes_for :comments
  validates_associated :comments
  validates :title, :content, presence: true
  validates :title, length: { maximum: 60, too_long: "%{count} characters is the maximum allowed" }, uniqueness: true

  rails_admin do
    configure :comments do
      label 'Comments'
    end
  end
end