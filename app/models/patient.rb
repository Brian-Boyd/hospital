class Patient < ActiveRecord::Base
  has_many :hospital_patient_joins
  has_many :hospitals, through: :hospital_patient_joins
  has_many :doctor_hospital_joins
  has_many :doctors, through: :doctor_hospital_joins
  has_many :medication_patient_joins
  has_many :medications, through: :medication_patient_joins

  validates :name, :presence => {:message => 'Name cannot be blank, form not submitted'}
  validates :email, :presence => {:message => 'Email cannot be blank, form not submitted'}
  validates :disorder, :presence => {:message => 'Description cannot be blank, form not submitted'}

  before_create :new_patient_email

  def new_patient_email
    PatientMailer.new_patient_email(self).deliver
  end

  scope :search_names, -> search { where("name like?", "%#{search}%") }

  include Workflow
  workflow do
    state :waiting do
      event :go_to_doctor, transitions_to: :doctor
      event :go_to_xray, transitions_to: :xray
      event :go_to_surgery, transitions_to: :surgery
      event :release, transitions_to: :leaving
    end
    state :doctor do
      event :go_to_xray, transitions_to: :xray
      event :go_to_surgery, transitions_to: :surgery
      event :go_to_billpay, transitions_to: :billpay
    end
    state :xray do
      event :go_to_doctor, transitions_to: :doctor
      event :go_to_surgery, transitions_to: :surgery
      event :go_to_billpay, transitions_to: :billpay
    end
    state :surgery do
      event :go_to_doctor, transitions_to: :doctor
      event :go_to_xray, transitions_to: :xray
      event :go_to_billpay, transitions_to: :billpay
    end
    state :billpay do
      event :release, transitions_to: :leaving
    end       
    state :leaving
  end  
end
