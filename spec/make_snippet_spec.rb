require 'make_snippet'

RSpec.describe "make snippet method" do
  context "given a string of six words" do
    it "returns a string of five words with a ..." do
      result = make_snippet("one two three four five six")
      expect(result).to eq "one two three four five..."
    end
  end
end