class Post < ActiveRecord::Base
    validates :title, presence: true
    #the category attribute is only allowd to be passed "Fiction" and  "Non-Fiction"
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)} #case sensitive could be applied
    validates :content, length: {minimum: 100}
end
