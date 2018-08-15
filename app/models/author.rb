class Author < ActiveRecord::Base
  validates :name, :email, presence: true, uniqueness: true
end
