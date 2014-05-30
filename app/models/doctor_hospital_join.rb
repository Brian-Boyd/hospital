class DoctorHospitalJoin < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :hospital
end
