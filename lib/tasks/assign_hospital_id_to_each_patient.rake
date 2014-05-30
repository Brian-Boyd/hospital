task assign_hospital_id_to_each_patient: :environment do
  patients = Patient.all
  patients.each do |patient|
    patient.hospital_id = "1"
    patient.save
  end
end