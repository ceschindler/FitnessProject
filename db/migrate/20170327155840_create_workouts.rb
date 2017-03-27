class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.integer :workout_id
      t.integer :user_id
      t.integer :exercise_id

      t.timestamps
    end
  end
end
