require 'rspec'
require 'allergies'

describe 'Score#allergies' do
    it "is empty for the 0 case" do
        expect(Score.new(0).names).to eq []
    end
end
