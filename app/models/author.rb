class Author < ActiveRecord::Base
  validates :name, :presence => true
  validates_uniqueness_of :email, :case_sensitive => false
end
