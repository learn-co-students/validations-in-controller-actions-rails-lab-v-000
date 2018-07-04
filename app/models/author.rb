class Author < ActiveRecord::Base
  validations :name, presence: true
  validations :email, uniqueness: true
end
