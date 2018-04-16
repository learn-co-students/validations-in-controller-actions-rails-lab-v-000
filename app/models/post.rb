class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true, allow_blank: false
  validates :category, presence: true
end
