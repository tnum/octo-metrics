class SitesController < ApplicationController

	def index
		@sites = Site.all
	end

	def show
		@site = Site.find(params[:id])
		@siteevents = @site.events
	end

	def new
		@site = Site.new
	end

	def create
		@site = Site.new(site_params)

		if @site.save
			flash[:notice] = "Site saved"
			redirect_to root_path
		else
			flash[:error] = "There was an error. Please try again"
			redirect_to new_site_path
		end
	end

end

private

def site_params
	params.require(:site).permit(:name, :url)
end