class Author < ActiveRecord::Base
  # author.rb
  validates :name, presence: true
  validates :email, uniqueness: true
end
