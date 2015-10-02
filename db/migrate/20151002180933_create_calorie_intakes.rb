class CreateCalorieIntakes < ActiveRecord::Migration
  def change
    create_table :calorie_intakes do |t|
      t.integer :calorie_intake

      t.timestamps null: false
    end
  end
end
