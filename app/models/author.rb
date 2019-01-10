class Author < ActiveRecord::Base

  validates :name, presence: true, on: :create
  validates :email, presence: true, uniqueness: true
end
