class Author < ActiveRecord::Base
  #must have name
  validates :name, presence: true
  #must have unique email
  validates :email, uniqueness: true
end
