class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  validate :is_valid?

  def is_valid?
    if name
      if !name.match(/\.\s\w/)
        errors.add(:name, "invalid name")
      elsif !email.match(/[@]/)
        errors.add(:email, "invalid email")
      end
    end
  end

end
