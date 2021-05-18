class Author < ActiveRecord::Base
	validates :name, presence: true
	validates :email, uniqueness: true, presence: true

end

# validates :title, presence: true
# 	validates :content, length: {minimum: 10}
# 	validates :summary, length: {maximum: 100}
# 	validates :category, inclusion: {in: %w(Fiction Non-fiction)}
# 	validate :clickbait

# 	private 

# 	def clickbait
# 		unless title != nil && title.match(/\bWon't Believe\b|\bTop\b|\bSecret\b|\bGuess\b/)  
# 			errors.add(:title, "title not clickbaitable enough")
# 		end
# 	end

# validates :name, uniqueness: true, presence: true
# 	validates :phone_number, length: {is: 10}
# end

# t.string   "name"
#     t.string   "email"