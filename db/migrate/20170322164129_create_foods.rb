class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :category
      t.integer :recovery_level
      t.string :preparation
      t.integer :calories

      t.timestamps
    end
  end
end
