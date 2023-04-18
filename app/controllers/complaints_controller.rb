class ComplaintsController < ApplicationController
  def index
    respond_to do |format|
      format.js {
        if params[:step].present?
          @step = params[:step].to_i + 1
          #Add logic to each step
          case params[:step]
          when 2
            #process initial data and respond accorded
          when 5
            #skip 6
            @step += 1
            #SAVE DATA
          when 7
            #skip 8 - END
          else
            @complaint = Complaint.new
          end
        else
          @step = 1
          @complaint = Complaint.new
        end
      }
      format.html{
        @step = 1
        @complaint = Complaint.new
      }
    end
  end
end
