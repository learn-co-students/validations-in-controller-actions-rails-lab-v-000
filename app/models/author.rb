class Author < ActiveRecord::Base
  # The name cannot be blank
  # The e-mail is unique
  validates :name, :presence => true
  validates :email, :uniqueness => true
end
