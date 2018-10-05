class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  # Uses Custom Validator in app/validators
  validates :email, presence: true, email: true
end
