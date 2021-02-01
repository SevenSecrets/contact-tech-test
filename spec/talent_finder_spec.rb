require 'talent_finder'
require 'json'

describe TalentFinder do

	it 'exists' do
		talent_finder = TalentFinder.new
		expect(talent_finder).to be_instance_of TalentFinder
	end

	describe 'search method tests' do

		before(:each) do
			@json_data = JSON.generate([ { "name": "Homer Simpson", "location": "Springfield", "date_of_birth": "1956-05-12" }, { "name": "Frank Reynolds", "location": "Philidelphia", "date_of_birth": "1944-11-17" }, { "name": "Diane Nguyen", "location": "Los Angeles", "date_of_birth": "1980-03-19" }, { "name": "Krusty the Clown", "location": "SpringField", "date_of_birth": "1957-10-29" } ])
			@location = "Springfield"
		end 

		it 'has search method' do
			expect(TalentFinder).to respond_to(:search)
		end

		it 'takes params' do
			expect(TalentFinder.search(@json_data, @location)).to be_truthy
		end 

		# it 'returns names' do
		# 	output = TalentFinder.search(@json_data, @location)
		# 	expect(output).to include "Homer Simpson" && "Krusty the Clown"
		# end 
	end 
end 