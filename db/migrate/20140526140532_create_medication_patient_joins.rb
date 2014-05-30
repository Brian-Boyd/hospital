class CreateMedicationPatientJoins < ActiveRecord::Migration
  def change
    create_table :medication_patient_joins do |t|
      t.integer :medication_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
