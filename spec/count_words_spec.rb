require 'count_words'

RSpec.describe "count words method" do
  context "given a string of words" do
    it "returns the number of words in the string" do
      result = count_words("one two three four five")
      expect(result).to eq 5
    end
  end
end