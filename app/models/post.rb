class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 100}
  validates :Category, inclusion: {in: %w(Fiction Non-Ficion)}
end
