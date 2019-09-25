class Post < ActiveRecord::Base
  validates :title, presence: true, allow_blank: false
  validates :content, presence: true, allow_blank: false, length: { minimum: 20 }
  validates :category, presence: true, allow_blank: false, inclusion: { in: %w(Fiction Non-Fiction) }

end
