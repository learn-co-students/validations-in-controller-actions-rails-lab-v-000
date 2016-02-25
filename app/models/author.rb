class Author < ActiveRecord::Base
  validates :name, presence: true #Checks for name
  validates :email, uniqueness: true #Checks for unique email
end
