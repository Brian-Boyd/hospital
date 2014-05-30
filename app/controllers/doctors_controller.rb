class DoctorsController < ApplicationController
  before_filter :find_doctor

  def index
    @doctors = @doctor.present? ? @doctor.doctors : Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def new
    @doctor = Doctor.find(params[:id])
    @doctor = Doctors.new
  end

  def create
    @doctor = Doctor.find(params[:id])
    @doctor = Doctors.new doctor_params
    success = @doctor.save
    if success == true
      flash[:notice] = "Doctor was successfully created!"
      redirect_to doctors_path(doctor)
    else
      flash[:error] = "Error detected. Please try again."
      render :new
    end
  end

  def edit
  end

  def update
    success = @doctor.update_attributes doctor_params
    if success == true
      flash[:notice] = "Successfully updated patient record!"
      redirect_to redirect_to doctors_path(doctor)
    else
      flash[:error] = "Please double check your entries"
      render :edit
    end 
  end

  def destroy
    @doctor.delete
    redirect_to root_path
  end

private
  def find_doctor
    @doctor = Doctor.find(params[:doctor_id]) if params[:doctor_id].present?
  end

end
