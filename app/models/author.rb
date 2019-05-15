class Author < ActiveRecord::Base
  validates_presence_of :name
  validates :email, presence: true, uniqueness: true
end
