def add_site
	visit '/'
	click_link 'Add site'
	within('form#new_site') do
		# fill_in('Name', with: 'Google search engine')
		find('#site_name').set("Google search engine")
		fill_in('Url', with: 'www.google.com')
		click_button 'Add site'
	end
end