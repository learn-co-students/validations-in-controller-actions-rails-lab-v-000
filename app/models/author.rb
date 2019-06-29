class Author < ActiveRecord::Base
    #validates :attribute, (use rails validation list) 
    #https://guides.rubyonrails.org/active_record_validations.html
    validates :name, presence: true
    validates :email, uniqueness: true
end
