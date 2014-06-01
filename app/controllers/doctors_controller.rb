class DoctorsController < ApplicationController
  before_action :authenticate_user!
  # before_filter :find_hospital, except: :index
  before_filter :find_doctor, only: [:show, :edit, :update, :destroy]

  def index
    @doctors = @doctor.present? ? @doctor.doctors : Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.create doctor_params
    success = @doctor.save
    if success == true
      flash[:notice] = "Doctor was successfully created!"
      redirect_to doctors_path
    else
      # flash[:error] = "Error detected. Please try again."
      render :new
    end
  end

  def edit
    @doctor = Doctor.find(params[:id])
  end

  def update
    @doctor = Doctor.find(params[:id])
    success = @doctor.update_attributes doctor_params
    if success == true
      flash[:notice] = "Successfully updated doctor record!"
      redirect_to doctors_path
    else
      # flash[:error] = "Please double check your entries"
      render :edit
    end 
  end

  def destroy
    @doctor = Doctor.find(params[:id])
    @doctor.delete
    redirect_to doctors_path
  end

private
  def find_hospital
    @hospital = Hospital.find params[:hospital_id]
  end

  def find_doctor
    @doctor = Doctor.find(params[:doctor_id]) if params[:doctor_id].present?
  end

  def doctor_params
    params.require(:doctor).permit(:name, :specialty)
  end

end
