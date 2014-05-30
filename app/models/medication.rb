class Medication < ActiveRecord::Base
  has_many :medication_patient_joins
  has_many :patients, through: :medication_patient_joins

  validates :name, :presence => {:message => 'Name cannot be blank, form not submitted'}
  validates :description, :presence => {:message => 'Description cannot be blank, form not submitted'}
end
