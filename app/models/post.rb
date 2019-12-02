class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { 
    in: ["Fiction", "Non-Fiction"],
    message: "%{value} is not a valid Category"
  }
  validates :content, length: { minimum: 100 }
end
