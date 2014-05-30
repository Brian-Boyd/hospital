module HospitalsHelper
  def workflow_links(patient)
    if patient.workflow_state == 'waiting'
      a = link_to "Doctor", 'javascript:void(0)', class: "box patient_#{patient.id} doctor change_workflow", workflow_url: doctor_hospital_patient_path(@hospital, patient)
      a += link_to "Xray", 'javascript:void(0)', class: "box patient_#{patient.id} xray change_workflow", workflow_url: xray_hospital_patient_path(@hospital, patient)
      a += link_to "Surgery", 'javascript:void(0)', class: "box patient_#{patient.id} surgery change_workflow", workflow_url: surgery_hospital_patient_path(@hospital, patient)
      a += link_to "Leaving", 'javascript:void(0)', class: "box patient_#{patient.id} leaving change_workflow", workflow_url: leaving_hospital_patient_path(@hospital, patient)
    elsif patient.workflow_state == 'doctor'
      b = link_to "Xray", 'javascript:void(0)', class: "box patient_#{patient.id} xray change_workflow", workflow_url: xray_hospital_patient_path(@hospital, patient)
      b += link_to "Surgery", 'javascript:void(0)', class: "box patient_#{patient.id} surgery change_workflow", workflow_url: surgery_hospital_patient_path(@hospital, patient)
      b += link_to "Pay Bill", 'javascript:void(0)', class: "box patient_#{patient.id} billpay change_workflow", workflow_url: billpay_hospital_patient_path(@hospital, patient)
    elsif patient.workflow_state == 'xray'
      c = link_to "Doctor", 'javascript:void(0)', class: "box patient_#{patient.id} doctor change_workflow", workflow_url: doctor_hospital_patient_path(@hospital, patient)
      c += link_to "Surgery", 'javascript:void(0)', class: "box patient_#{patient.id} surgery change_workflow", workflow_url: surgery_hospital_patient_path(@hospital, patient)
      c += link_to "Pay Bill", 'javascript:void(0)', class: "box patient_#{patient.id} billpay change_workflow", workflow_url: billpay_hospital_patient_path(@hospital, patient)
    elsif patient.workflow_state == 'surgery'
      d = link_to "Doctor", 'javascript:void(0)', class: "box patient_#{patient.id} doctor change_workflow", workflow_url: doctor_hospital_patient_path(@hospital, patient)
      d += link_to "Xray", 'javascript:void(0)', class: "box patient_#{patient.id} xray change_workflow", workflow_url: xray_hospital_patient_path(@hospital, patient)
      d += link_to "Pay Bill", 'javascript:void(0)', class: "box patient_#{patient.id} billpay change_workflow", workflow_url: billpay_hospital_patient_path(@hospital, patient)
    elsif patient.workflow_state == 'billpay'
      link_to "Leaving", 'javascript:void(0)', class: "box patient_#{patient.id} leaving change_workflow", workflow_url: leaving_hospital_patient_path(@hospital, patient)
    end
  end
end