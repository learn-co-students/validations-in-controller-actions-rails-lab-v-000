class Author < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
end
