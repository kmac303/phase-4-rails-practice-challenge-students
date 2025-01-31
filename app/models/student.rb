class Student < ApplicationRecord
    validates :name, presence: :true
    validates :major, presence: :true
    validate :at_least_18

    def at_least_18
        unless self.age >= 18
            errors.add(:age, "You must be 18 years or older.")
        end
    end

    belongs_to :instructor
end
