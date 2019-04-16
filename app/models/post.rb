class Post < ActiveRecord::Base
    validates :title, presence: true, uniqueness: true
    validates :content, length: {minimum: 250}
    validates :category, presence: true, inclusion: {in: %w(Fiction Non-Fiction)}
end
