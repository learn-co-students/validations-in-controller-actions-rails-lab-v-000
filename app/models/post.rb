class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 100 }
<<<<<<< HEAD
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
=======
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}

>>>>>>> 6fc83036f18cae4b4c419a3deec4c22ddec232c7
end

#
# t.string   "title"
# t.string   "category"
# t.text     "content"
