class AdminMailer < ApplicationMailer
  default from: 'no-responder@data.org.uy'

  def new_complaint
    @complaint = params[:complaint]
    mail(to: @complaint.email, subject: "Apelatrón - Seguí tu apelación en #{@complaint.platform.name}")
  end
  def complaint_followup
    @complaint = params[:complaint]
    mail(to: @complaint.email, subject: "Apelatrón - ¿Novedades de tu apelación en #{@complaint.platform.name}?")
  end
end
