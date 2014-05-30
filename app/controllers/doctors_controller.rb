class DoctorsController < ApplicationController
  before_filter :load_doctor

  def load_doctor
    @doctor = Doctor.find(params[:doctor_id]) if params[:doctor_id].present?
  end

  def index
    @doctors = @doctor.present? ? @doctor.doctors : Doctor.all
  end

end
