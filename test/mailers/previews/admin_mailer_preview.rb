class AdminMailerPreview < ActionMailer::Preview
  def complaint_followup
    AdminMailer.with(complaint: Complaint.first).complaint_followup
  end
  def new_complaint
    AdminMailer.with(complaint: Complaint.first).new_complaint
  end
end
