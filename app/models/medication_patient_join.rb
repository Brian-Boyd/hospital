class MedicationPatientJoin < ActiveRecord::Base
  belongs_to :medication
  belongs_to :patient
end
