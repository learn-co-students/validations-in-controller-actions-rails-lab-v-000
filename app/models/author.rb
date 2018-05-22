class Author < ActiveRecord::Base
  validates :name, presence:  {message: "Must have name" }
  validates :email, uniqueness: {message: "Must have unique name"}
end
