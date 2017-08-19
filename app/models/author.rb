class Author < ActiveRecord::Base
  validates_presence_of :name, presence: true
  validates_uniqueness_of :email
end
