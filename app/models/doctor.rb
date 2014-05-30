class Doctor < ActiveRecord::Base
  # belongs_to :curable, polymorphic: true
  has_many :doctor_patient_joins
  has_many :patients, through: :doctor_patient_joins
  has_many :doctor_hospital_joins
  has_many :hospitals, through: :doctor_hospital_joins

  # validates :name, :presence => {:message => 'Name cannot be blank, form not submitted'}
  
end