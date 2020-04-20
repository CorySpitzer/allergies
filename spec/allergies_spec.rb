require 'rspec'
require 'allergies'

describe 'Score#allergies' do
    it "is empty for the 0 case" do
        expect(Score.new(0).names).to eq []
    end

    it "is works for a score of 1" do
        expect(Score.new(1).names).to eq ['eggs']
    end
end
