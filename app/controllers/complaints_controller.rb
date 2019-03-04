class ComplaintsController < ApplicationController

    def create 
        @complaint = Complaint.new(
            content: params[:complaint][:content],
            company_id: params[:company_id]
        )
        @complaint.user = current_user 

        respond_to do |format|
        if @complaint.save 
            format.js 
        else
            format.html {redirect_to root_path, alert: 'Por favor intente nuevamente'} 
        end
        end
    end
    
end
