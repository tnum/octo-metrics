class API::EventsController < ApplicationController
	skip_before_action :verify_authenticity_token
 
   def create
   	site = Site.find_by(url: request.env['HTTP_ORIGIN'])
   	render json: "Unregistered application", status: :unprocessable_entity
   end

end

private

   def event_params
     params.require(:event).permit(:name)
   end