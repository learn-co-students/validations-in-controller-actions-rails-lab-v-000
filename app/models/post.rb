class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, presence: true, inclusion: { :in => %w(Fiction Non-Fiction)}
  validates :content, length: { minimum: 100 }
  
end

# validates :title, presence: true
# validates :content, length: { minimum: 250 }
# validates :summary, length: { maximum: 250 }
# validates :category, presence: true, inclusion: { :in => %w(Fiction Non-Fiction) }
# validate :must_be_clickbait


# CLICKBAIT_PATTERNS = [
#   /Won't Believe/i,
#   /Secret/i,
#   /Top [0-9]*/i,
#   /Guess/i
# ]

# def must_be_clickbait
#   if CLICKBAIT_PATTERNS.none? { |pat| pat.match title }
#     errors.add(:title, "must be clickbait")
#   end
# end