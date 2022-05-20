require 'debug_ex1'

RSpec.describe "method to print name" do
  context "when name Kay given to say_hello" do
    it "returns hello Kay" do
      result = say_hello("Kay")
      expect(result).to eq "hello Kay"
    end
  end
end