class PatientsController < ApplicationController
  before_action :authenticate_user!
  # before_filter :find_hospital, except: [:index, :showinfo]
  before_filter :find_patient, only: [:show, :edit, :update, :destroy, :waiting, :doctor, :xray, :surgery, :leaving, :billpay, :release, :showinfo]

  def index
    @patients = @patient.present? ? @patient.patients : Patient.all
  end

  def show
  end

  def showinfo
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.create patient_params
    success = @patient.save
    if success == true
      flash[:notice] = "Patient was successfully created!"
      redirect_to patients_path
    else
      # flash[:error] = "Error detected. Please try again."
      render :new
    end
  end

  def edit
  end

  def update
    success = @patient.update_attributes patient_params
    if success == true
      flash[:notice] = "Successfully updated patient record!"
      redirect_to patients_path
    else
      # flash[:error] = "Please double check your entries"
      render :edit
    end 
  end

  def destroy
    @patient.delete
    redirect_to patients_path
  end

  def waiting
    @patient.go_to_waiting!
    redirect_to hospital_path(@hospital)
  end

  def doctor
    @patient.go_to_doctor!
    respond_to do |format|
      format.js
    end
  end

  def xray
    @patient.go_to_xray!
    respond_to do |format|
      format.js
    end
  end

  def surgery
    @patient.go_to_surgery!
    respond_to do |format|
      format.js
    end
  end

  def billpay
    @patient.go_to_billpay!
    respond_to do |format|
      format.js
    end
  end

  def release
    success = @patient.update_attributes patient_params
    if success == true
      flash[:notice] = "Your patient has been released from the hospital"
      redirect_to root_path
    else
      flash[:error] = "Please enter release notes"
      render :leaving
    end
  end

  def leaving
    @patient.release!
    respond_to do |format|
      format.js
    end
  end

  def search_names
    @search_names = Patient.search_names params[:q]
  end

private
  def patient_params
    params.require(:patient).permit(:name, :email, :disorder, :release_note)
  end
  
  def find_hospital
    @hospital = Hospital.find params[:hospital_id]
  end

  def find_patient
    @patient = Patient.find params[:id]
  end

end
