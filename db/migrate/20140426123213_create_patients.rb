class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :email
      t.text :disorder
      t.string :workflow_state, default: :waiting
      t.text :release_note

      t.timestamps
    end
  end
end
