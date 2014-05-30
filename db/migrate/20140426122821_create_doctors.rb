class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialty
      t.integer :curable_id
      t.string :curable_type

      t.timestamps
    end
  end
end
