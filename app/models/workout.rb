class Workout < ApplicationRecord
    has_many :exercises, through: :users
end
