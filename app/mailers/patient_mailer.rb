class PatientMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_patient_email(patient)
    # puts '*'*100
    # puts student.inspect
    @patient = patient
    mail(to: patient.email, subject: "You are now in the waiting room.")
  end
end
