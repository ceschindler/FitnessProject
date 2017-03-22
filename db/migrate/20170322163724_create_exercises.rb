class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :category
      t.integer :intensity_level
      t.integer :time
      t.string :link_to_exercise

      t.timestamps
    end
  end
end
