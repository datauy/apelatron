class ComplaintsController < ApplicationController
  @@step_data = [
    {},
    {},
    {},
    {
      title: 'Entender por qué pasó',
      image: "step-3-header.svg",
      alt: "Imagen Paso 3"
    },
    {
      title: 'Lo que se puede hacer',
      image: "step-4-header.svg",
      alt: "Imagen Paso 4"
    },
    {
      title: 'Cómo presentar la apelación',
      image: "step-5-header.svg",
      alt: "Imagen Paso 5"
    }
  ]
  def index
    respond_to do |format|
      format.js {
        @step = 2
        if params[:step].present? && params[:step].to_i > 2
          steps
        end
      }
      format.html{
        logger.info "\n Processing first steps #{ @step }"
        @step = 1
        @complaint = Complaint.new
        @platform_options = Platform.all.map { |p| [p.name, p.id] }
        @standard_options = Standard.all.map { |p| [p.name, p.id] }
        @country_options = Country.all.map { |p| [p.name, p.id ] }
        @reason_options = Reason.all.map { |p| [p.name, p.id ] }
      }
    end
  end
  #
  def steps
    if (params[:step] && params[:platform] && params[:reason] && params[:standard])
      @step = params[:step].to_i
      @platform = Platform.find(params[:platform]) #Get?
      @reason = Reason.find(params[:reason]) #Get?
      @standard = Standard.find(params[:standard]) #Get?
      @step_data = @@step_data
      @steps = Step.where( step_number: @step, platform_id: @platform.id, standard_id: @standard.id, reason_id: @reason.id ).order(:order)
    end
  end
  #
  def create
    respond_to do |format|
      format.js {
        @complaint = Complaint.new(complaint_params)
        if @complaint.save
          params[:step] = 3
          params[:platform] = @complaint.platform_id
          params[:reason] = @complaint.reason_id
          params[:standard] = @complaint.standard_id
          steps
        else
          @step = 2
          @message = {
            title: 'Error creando la apelación, por favor complete todos los campos.',
            message: 'Si el problema persiste contacte a <a href="mailto:soporte@data.org.uy">soporte@data.org.uy</a>'.html_safe
            }
        end
      }
    end
  end
  #
  def complaint_params
    params.require(:complaint).permit(:name, :email, :follow_number, :platform_id, :standard_id, :country_id, :description, :video, :reason_id)
  end
  #
  def get_token(retries)
    token = SecureRandom.urlsafe_base64(nil, false)
    if Complaint.find_by(token: token).present?
      raise if (retries += 1) > 10
      Rails.logger.warn("random token, unlikely collision number #{retries}")
      get_token(retries + 1)
    else
      return token
    end
  end
end
