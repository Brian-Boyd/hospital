class MedicationsController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_patient, except: [:index, :mededit, :meddelete, :medupdate]
  before_filter :find_hospital, except: [:index, :mededit, :meddelete, :medupdate]
  before_filter :find_medication, only: [:show, :edit, :update, :destroy, :mededit, :meddelete, :medupdate]
  # before_filter :load_medication

  # def load_medication
  #   @medication = Medication.find(params[:medication_id]) if params[:medication_id].present?
  # end

  def index
    @medications = @medication.present? ? @medication.medications : Medication.all
  end

  def new
    @medication = @patient.medications.new
  end

  def create
    @medication = @patient.medications.new medication_params
    success = @medication.save
    if success == true
      flash[:notice] = "Medication was successfully created!"
      redirect_to hospital_patient_path(@hospital, @patient)
    else
      # flash[:error] = "Error detected. Please try again."
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @medication.update_attributes medication_params
      redirect_to hospital_patient_path(@hospital, @patient)
  end

  def mededit
  end

  def medupdate
    @medication.update_attributes medication_params
      redirect_to medications_path
  end

  def destroy
    @medication.delete
    redirect_to root_path
  end

  def meddelete
    @medication.delete
    redirect_to medications_path
  end

private
  def find_hospital
    @hospital = Hospital.find params[:hospital_id]
  end

  def find_patient
    @patient = Patient.find params[:patient_id]
  end

  def find_medication
    @medication = Medication.find params[:id]
  end

  def medication_params
    params.require(:medication).permit(:name, :description, :hospital_id)
  end

end
