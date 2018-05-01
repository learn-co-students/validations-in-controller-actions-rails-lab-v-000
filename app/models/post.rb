class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  #%w is notation that allows an array of strings that are delimited with spaces instead of quoutes and comma
  # ex %w(foo bar) is equivalent to ["foo", "bar"]
  validates :content, length: { minimum: 100 }

end
