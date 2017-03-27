class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.integer :workout_id
      t.integer :meal_id
      t.integer :food_id

      t.timestamps
    end
  end
end
