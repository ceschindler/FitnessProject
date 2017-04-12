class Meal < ApplicationRecord
    has_many :foods, through: :workouts
end
