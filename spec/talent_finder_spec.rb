require 'talent_finder'

describe TalentFinder do
	it 'exists' do
		talent_finder = TalentFinder.new
		expect(talent_finder).to be_instance_of TalentFinder
	end
end 