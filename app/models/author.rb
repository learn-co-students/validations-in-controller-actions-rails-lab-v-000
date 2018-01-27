class Author < ActiveRecord::Base
  validates_presence_of :email, :name
  validates_uniqueness_of :email
end
