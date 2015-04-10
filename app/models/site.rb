class Site < ActiveRecord::Base

	has_many :events

	validates :url, uniqueness: true
end