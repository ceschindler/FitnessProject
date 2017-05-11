class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.integer :exercise_id
      t.string :category
      t.integer :intensity_level
      t.integer :time

      t.timestamps
    end
  end
end
