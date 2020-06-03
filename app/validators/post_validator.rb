class PostValidator < ActiveModel::Validator
    def validate(record)
        unless record.category == "Fiction" or record.category == "Non-Fiction"
            record.errors[:category] << ""
        end

    end
end