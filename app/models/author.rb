class Author < ActiveRecord::Base
    validates :name, presence: :true
    validates :email, uniqueness: {
    message: "invalid email" }
end
