class Author < ActiveRecord::Base
  validates :name, presence: true, on: :create
  validates :email, uniqueness: true, on: :create
end
