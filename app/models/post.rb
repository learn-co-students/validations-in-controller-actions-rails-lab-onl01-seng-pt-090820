class Post < ActiveRecord::Base
    validates :title, presence: true
    validate :correct_category
    validates :content, length: { minimum: 100 }

    def correct_category
        if self.category != "Fiction" && self.category != "Non-Fiction"
            errors.add(:category, "The category must be fiction or non-fiction.")
        end
    end
end
