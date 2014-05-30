class HospitalsController < ApplicationController
  before_filter :find_hospital, only: [:show, :edit, :update, :destroy, :new_doctor, :create_doctor]
  # before_filter :load_hospital

  # def load_hospital
  #   @hospital = Hospital.find(params[:hospital_id]) if params[:hospital_id].present?
  # end

  def index
    @hospitals = @hospital.present? ? @hospital.hospitals : Hospital.all
  end

  def show
    @patients_processing = @hospital.patients.where.not(workflow_state: 'leaving')
    @patients_completed = @hospital.patients.where(workflow_state: 'leaving')
    @patients = Patient.order("id").page(params[:page]).per(3)
  end

  def new
    @hospital = Hospital.new
  end

  def create
    @hospital = Hospital.create hospital_params
    success = @hospital.save
    if success == true
      flash[:notice] = "Hospital was successfully created!"
      redirect_to root_path
    else
      flash[:error] = "Error detected. Please try again."
      render :new
    end
  end

  def edit
  end

  def update
    @hospital.update_attributes hospital_params
    redirect_to root_path
  end

  def destroy
    @hospital.delete
    redirect_to root_path
  end

  def new_doctor
    @doctor = @hospital.doctors.new
  end

  def create_doctor 
    @doctor = @hospital.doctors.create doctor_params
    success = @doctor.save
    if success == true
      flash[:notice] = "Doctor was successfully created!"
      redirect_to hospital_path(@hospital)
    else
      flash[:error] = "Error detected. Please try again."
      render :new_doctor
    end
  end

private
  def find_hospital
    @hospital = Hospital.find params[:id]
  end

  def hospital_params
    params.require(:hospital).permit(:name, :location, :specialty)
  end

  def doctor_params
      params.require(:doctor).permit(:name)
  end

end
