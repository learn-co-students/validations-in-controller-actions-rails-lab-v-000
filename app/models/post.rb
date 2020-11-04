class Post < ActiveRecord::Base
    validates :title, presence: true;
    validates :content, length: { minimum: 100 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not a valid size" }

    # def validate(article_bad)
    #     unless article_bad.category.match?("Fiction" || "Non-Fiction")
    #         article_bad.errors[:category] << "Error!"
    #     end
    # end
end
