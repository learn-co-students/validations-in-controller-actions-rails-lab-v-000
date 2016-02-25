class Post < ActiveRecord::Base
  validates :title, presence: true #Checks for title
  validates :content, length: { minimum: 100 } #Content to be at least 100 characters long
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)} #Should include one of the following categories
end

# %w(string string) is a word array
