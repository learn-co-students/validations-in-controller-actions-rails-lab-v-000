class Post < ActiveRecord::Base
  validates :title, presence: true
  # validates :email, unique:
  validates :content, length: { minimum: 100 }
  # validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  # validate :clickbait
  # validates :title, length: { minimum: 250 }
  # validates :summary, length: { maximum: 250 }
  # validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  # validate :clickbait
end
