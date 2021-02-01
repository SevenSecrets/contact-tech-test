require 'json'

class TalentFinder

	def self.search(json_data, location)
		data = JSON.parse(json_data)
		names = data.map { |person|
			person["name"] if person["location"].casecmp(location).zero?
		}.compact
		names
	end
end 