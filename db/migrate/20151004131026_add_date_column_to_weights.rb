class AddDateColumnToWeights < ActiveRecord::Migration
  def change
    add_column :weights, :date_created, :date
  end
end
