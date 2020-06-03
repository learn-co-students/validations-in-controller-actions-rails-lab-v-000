class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates_with PostValidator
    validates :title, length: { minimum: 1 }
    validates :content, length: { minimum: 200 }
end
