class Author < ActiveRecord::Base
  # 1. The name cannot be blank
  validates :name, presence: true
  # 1. The e-mail is unique
  validates :email, uniqueness: true
end
