class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true

  # validate :unique?
  #
  #   def unique?
  #    if email && email != ""
  #      return true
  #    else
  #      errors.add(:unique?, "Email must be unique")
  #    end
  #  end

end
