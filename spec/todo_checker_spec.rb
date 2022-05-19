require 'todo_checker'

RSpec.describe "todo_checker" do
  context "when an empty string is passed" do
    it "returns an error" do
      expect { todo_checker("")}.to raise_error "There's no text to check."
    end
  end

  context "when a string starts with the text #TODO" do
    it "returns true" do
      expect(todo_checker("#TODO wash the car")).to eq true
    end
  end

  context "when a string contains the #TODO anywhere in the text" do
    it "returns true" do
      expect(todo_checker("There's so many things #TODO today")).to eq true
    end
  end

  context "when a string doesn't contain #TODO anywhere in the text" do
    it "returns false" do
      expect(todo_checker("Watch the television")).to eq false
    end
  end

  context "when a string contains 'todo', but doesn't match #TODO " do
    it "returns false" do
      expect(todo_checker("The postman todotoday will be here")).to eq false
    end
  end
end
