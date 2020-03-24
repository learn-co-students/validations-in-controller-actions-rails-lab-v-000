class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: ["Fiction", "Non-Fiction"]}
  validates :content, presence: true, length: { minimum: 10 }
end
