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
        logger.info "SETP 2 JS!!!"
        @step = 2
        if ( params[:platform].present? )
          @reason_options = ''
          reasons = Step.
          joins(:reason).
          select(:'reasons.id', :'reasons.name').
          where(platform_id: params[:platform], step_number: 3).
          pluck(:'reasons.id', :'reasons.name').
          uniq
          if reasons.length == 1
            params[:reason] = reasons.first[0]
          else
            @reason_options = '<option value="">Motivo de moderación</option>'
          end
          @reason_options += reasons.map{|p| "<option value='#{p[0]}'>#{p[1]}</option>"}.join
          logger.info "SETP 1 Reason Options #{@reason_options}"
        end
        if ( params[:reason].present? && params[:platform].present? )
          @standard_options = "<option value=''>Tipo de moderación</option>"
          @standard_options += Step.
          joins(:standards).
          select(:'standards.id', :'standards.name').
          where(platform_id: params[:platform], reason_id: params[:reason], step_number: 3).
          pluck(:'standards.id', :'standards.name').
          uniq.
          map{|p| "<option value='#{p[0]}'>#{p[1]}</option>"}.join
          logger.info "SETP 1 Standard Options #{@standard_options}"
        end
      }
      format.html{
        if params[:token]
          @step = 2
          @complaint = Complaint.find_by(token: params[:token])
          if @complaint.nil?
            redirect_to controller: :complaints, action: :index
          end
        else
          @step = 1
          @complaint = Complaint.new
        end
        logger.info "\n Processing first steps #{ @step }"
        @platform_options = Platform.all.order(:name).map { |p| [p.name, p.id] }
        @country_options = Country.all.order(:name).map { |p| [p.name, p.id ] }
      }
    end
  end
  #
  def steps
    if (params[:step] && params[:platform] && params[:reason] && params[:standard])
      @token_param = ''
      @step = params[:step].to_i
      @platform = Platform.find(params[:platform]) #Get?
      @reason = Reason.find(params[:reason]) #Get?
      @standard = Standard.find(params[:standard]) #Get?
      @step_data = @@step_data
      @steps = Step.joins(:standards).where( step_number: @step, platform_id: @platform.id, "standards.id": @standard.id, reason_id: @reason.id ).order(:order)
      @back = params[:back].present? ? true : false;
      if params[:token]
        @token_param = "&token=#{params[:token]}"
        if @step == 5
          @complaint = Complaint.find_by( token: params[:token] )
        end
      end
    end
  end
  #
  def create
    respond_to do |format|
      format.js {
        if params[:complaint][:token].present?
          @complaint = Complaint.find_by( token: params[:complaint][:token] )
          @complaint.update(complaint_params)
        else
          params[:complaint][:token] = get_token()
          @complaint = Complaint.new(complaint_params)
          @complaint.save
        end
        if @complaint.valid?
          params[:step] = 3
          params[:platform] = @complaint.platform_id
          params[:reason] = @complaint.reason_id
          params[:standard] = @complaint.standard_id
          params[:token] = @complaint.token
          steps
        else
          @step = 2
          @message = {
            title: 'Por favor complete todos los campos.',
            message: 'Si el problema persiste contacte a <a href="mailto:soporte@data.org.uy">soporte@data.org.uy</a>'.html_safe
          }
        end
      }
    end
  end
  #
  def update
    respond_to do |format|
      @complaint = Complaint.find(params[:id])
      @complaint.update( complaint_params )
      format.js {
        if (params[:complaint].keys.length == 1 )
          step = 5
        else
          step = 2
        end
        if @complaint.valid?
          params[:step] = step + 1
          params[:platform] = @complaint.platform_id
          params[:reason] = @complaint.reason_id
          params[:standard] = @complaint.standard_id
          params[:token] = @complaint.token
          steps
        else
          @step = step
          @message = {
            title: 'Error actualizando el número de apelación, por favor complete todos los campos.',
            message: 'Si el problema persiste contacte a <a href="mailto:soporte@data.org.uy">soporte@data.org.uy</a>'.html_safe
          }
        end
      }
      format.html {
        redirect_to controller: :static_pages, action: :other_actions
      }
    end
  end
  #
  def feedback
    if params[:token].present?
      @complaint = Complaint.find_by( token: params[:token] )
      if @complaint.nil?
        redirect_to controller: :complaints, action: :index
      end
      if params[:response].present?
        @complaint.success = params[:response]
        @complaint.save
      end
    else
      redirect_to controller: :complaints, action: :index
    end
  end
  #
  def complaint_params
    params.require(:complaint).permit(:name, :email, :follow_number, :platform_id, :standard_id, :country_id, :description, :video, :reason_id, :token, :delay, :usability, :satisfaction, :useful, :success)
  end
  #
  def get_token(retries = 0)
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
