class Author < ActiveRecord::Base
  validates(:name, { :length => { :minimum => 1 } })
  validates :email, uniqueness: true
  validates :email, format: { with: /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b/i,
                      message: "not a valid email" }
end
