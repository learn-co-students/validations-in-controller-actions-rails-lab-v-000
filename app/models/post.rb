class GoodnessValidator < ActiveModel::Validator
  def validate(record)
    if record.category != "Fiction" && record.category != "Non-Fiction"
      record.errors[:category] << "Category needs to be Fiction or Non-Fiction"
    end
  end
end

class Post < ActiveRecord::Base
  include ActiveModel::Validations
  validates :title, presence: true
  validates :category, format: {with: /Fiction| Non-Fiction/}
  validates :content, length: {minimum: 100}
  validates_with GoodnessValidator
end
