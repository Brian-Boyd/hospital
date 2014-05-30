class CreateHospitalPatientJoins < ActiveRecord::Migration
  def change
    create_table :hospital_patient_joins do |t|
      t.integer :hospital_id
      t.integer :patient_id
    end
  end
end
