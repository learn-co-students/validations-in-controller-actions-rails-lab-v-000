class Author < ActiveRecord::Base
    validates :name, presence: true
    validates :email, uniqueness: true #can also apply case sensitive
end
