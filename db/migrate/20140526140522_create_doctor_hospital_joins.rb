class CreateDoctorHospitalJoins < ActiveRecord::Migration
  def change
    create_table :doctor_hospital_joins do |t|
      t.integer :doctor_id
      t.integer :hospital_id

      t.timestamps
    end
  end
end
