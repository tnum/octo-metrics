require 'rails_helper'

feature 'User registers site' do

	before do
		add_site
	end
	
	scenario 'successfully' do
		within '.site-index' do
			expect(page).to have_link('Google search engine')
		end
	end

	scenario 'unsuccessfully with duplicate link' do
		add_site
		expect(page).to have_content('error')
	end

end

# As a user, I want to register an application with Blocmetrics for tracking

# Still to do:
# * Application's name
# * Associate sites with users
# * Users can only see an index of their own sites
# * Destroy action