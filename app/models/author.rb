class Author < ActiveRecord::Base
  #validates_presence_of :name, :email (can't check uniqueness like this )
  validates :name, presence: true
  validates :email, uniqueness: true
end
