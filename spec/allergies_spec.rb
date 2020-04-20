require 'rspec'
require 'allergies'

describe 'Score#allergies' do
    it "is empty for the 0 case" do
        expect(Score.new(0).names).to eq []
    end

    it "is works for a score of 1" do
        expect(Score.new(1).names).to eq ['eggs']
    end

    it "is works for a score of 2" do
        expect(Score.new(2).names).to eq ['peanuts']
    end

    it "is works for a score of 3" do
        expect(Score.new(3).names).to eq ['peanuts', 'eggs']
    end

    it "is works for a score of 4" do
        expect(Score.new(4).names).to eq ['shellfish']
    end

    it "is works for a score of 5" do
        expect(Score.new(5).names).to eq ['shellfish', 'eggs']
    end

    it "is works for a score of 8" do
        expect(Score.new(8).names).to eq ['strawberries']
    end
end
