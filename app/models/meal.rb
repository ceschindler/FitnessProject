class Meal < ApplicationRecord
    belongs_to :workout, has_many :foods
end
