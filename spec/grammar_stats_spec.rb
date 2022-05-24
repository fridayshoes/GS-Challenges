require "grammar_stats"

RSpec.describe GrammarStats do
  context "Check method" do
    it "It will return true if the string begins with a capital letter and ends with a '.'" do
      check_1 = GrammarStats.new
      result = check_1.check ("This is a string.")
      expect(result).to eq true
    end
  end

    it  "it will return false if the string doesn't begin with a capital letters or end with a .?!" do
      check_1 = GrammarStats.new
      result = check_1.check ("this is a string")
      expect(result).to eq false
    end

    context "percentage_good method" do
    it "will return the percentage(%) of strings that begin with a capital letters or end with a .?!" do
      check_1 = GrammarStats.new
      check_1.check ("this is a string")
      check_1.check ("hello")
      check_1.check ("This is a string.")
      check_1.check ("hello you")
      check_1.percentage_good 
      result = check_1.percentage_good
      expect(result).to eq ("25%")
    end
  end
  
  it "It outputs true" do
    check_1 = GrammarStats.new
    check_1.check("This is a string.")
    check_1.check("This is a string.")
    check_1.check("This is a string.")
    check_1.check("This is a string.")
    result = check_1.percentage_good
    expect(result).to eq("100%") 
  end

  it "It outputs true" do
    check_1 = GrammarStats.new
    check_1.check("This is a string.")
    check_1.check("This is a string.")
    check_1.check("This is a string")
    result = check_1.percentage_good
    expect(result).to eq("67%") 
  end
end



