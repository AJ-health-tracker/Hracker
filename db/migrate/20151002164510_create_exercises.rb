class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :exercise_performed
      t.integer :exercise_type_id
      t.integer :calories_burned

      t.timestamps null: false
    end
  end
end
