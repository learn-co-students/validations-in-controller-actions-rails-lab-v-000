class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /@/
end
