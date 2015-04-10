class Site < ActiveRecord::Base

	validates :url, uniqueness: true
end