class Post < ActiveRecord::Base
  validations :title, presence true
  # validations :content
end
