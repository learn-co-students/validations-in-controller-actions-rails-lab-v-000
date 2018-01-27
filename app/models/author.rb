class Author < ActiveRecord::Base
    validates :name, presence: true
    validates :email, uniqueness: {message: "Email already in use"}
end
