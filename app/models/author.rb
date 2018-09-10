class Author < ActiveRecord::Base
# name cannot be blank
  validates :name, presence: true
# email must be unique
  validates :email, uniqueness: true
end
