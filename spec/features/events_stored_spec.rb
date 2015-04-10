require 'rails_helper'

feature 'Events stored' do

	before do
		@site = create(:site)
		@event = create(:event)
	end

	scenario 'and displayed for associated sites successfully' do
		visit '/'
		within '.site-index' do
			click_link 'Google search engine'
		end
		expect(page).to have_content('1')
	end

end 