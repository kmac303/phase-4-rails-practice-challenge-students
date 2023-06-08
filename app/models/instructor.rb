class Instructor < ApplicationRecord
    validates :name, presence: :true
    validates :major, presence: :true
    validate :at_least_18

    has_many :students

    def at_least_18
        unless self.age >= 18
            errors.add(:age, "You must be 18 years or older.")
        end
    end
end
