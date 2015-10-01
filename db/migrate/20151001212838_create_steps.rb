class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :steps_taken

      t.timestamps null: false
    end
  end
end
