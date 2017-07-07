class Author < ActiveRecord::Base
  validates_presence_of :name, presence: true
  validates :email, format: { with: /@/ }, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 60 }
end
