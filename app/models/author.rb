class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: { minimum: 1 }
  validates :email, presence: true
  validates :email, length: { minimum: 1 }
  validates :email, uniqueness: true

end
