require 'improve_grammar'

RSpec.describe "improve_grammar" do
  it "returns error message when no text given" do
    expect {improve_grammar("") }.to raise_error "no text given"
  end
  it "returns true when capital letter and full stop" do
    expect(improve_grammar("Hello.")).to eq true
  end
  context "when string starts with capital and ends with ?" do
    it "returns true" do
    expect(improve_grammar("Hi there, how are you?")).to eq true
  end
  end
  context "when string starts with capital and ends with !" do
    it "returns true" do
    expect(improve_grammar("Hello world!")).to eq true
  end
  end
end