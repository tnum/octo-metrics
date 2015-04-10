require 'faker'

# Create sites

15.times do
	site = Site.create!(
		url:  Faker::Internet.url,
		name: Faker::Company.name
	)
	site.update_attributes!(created_at: rand(10.minutes .. 1.year).ago)
end

sites = Site.all

# Create events
90.times do
	event = Event.create!(
		name: Faker::Name.name,
		site: sites.sample
	)
	event.update_attributes!(created_at: rand(10.minutes .. 1.year).ago)
end

events = Event.all

puts "Seed finished"
 puts "#{Site.count} sites created"
 puts "#{Event.count} events created"