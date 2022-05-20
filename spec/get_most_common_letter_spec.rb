require 'get_most_common_letter'

RSpec.describe "get most common letter method" do
  context "receives a string of text" do
    it "returns the most common letter in the string" do
      result = get_most_common_letter("the roof, the roof, the roof is on fire!")
      expect(result).to eq "o"
    end
  end
end