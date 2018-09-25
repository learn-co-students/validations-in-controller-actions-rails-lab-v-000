class Author < ActiveRecord::Base
  validates :name, length: {minimum: 1}, presence: true
  validates_uniqueness_of :email
end
