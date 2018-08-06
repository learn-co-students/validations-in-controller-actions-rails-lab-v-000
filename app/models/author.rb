class Author < ActiveRecord::Base
  validates :name, length: { minimum: 2 }
  validates :name, uniqueness: true
  validates :email, uniqueness: true
end
