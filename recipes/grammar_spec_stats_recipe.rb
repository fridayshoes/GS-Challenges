GRAMMAR STATS Class Design Recipe

1. Describe the Problem

Put or write the user story here. Add any clarifying notes you might have.

As a user, I would like to check if a sentence(string) includes a capital letter at the begining of the sentence and ends with
a '.' at then end. I would also like to check what percentage returned true or false. 



2. Design the Class Interface

Include the initializer and public methods with all parameters and return values.


# EXAMPLE

class GrammarStats
  def initialize
    # ...
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
  end

  def percentage_good()
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end


3. Create Examples as Tests

Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
check_1 = GrammarStats.new
check_1.check ("This is a string.")
# output => true


#2 
check_1 = GrammarStats.new
check_1.check ("this is a string")
# output => false

#3 
check_1 = GrammarStats.new
check_1.check ("this is a string")
check_1.check ("hello")
check_1.check ("This is a string.")
check_1.check ("hello you")
check.percentage_good 
# output => 25%


check_1 = GrammarStats.new
check_1.check("This is a string.")
check_1.check("This is a string.")
check_1.check("This is a string.")
check_1.check("This is a string.")
result = check_1.percentage_good
# output => 100%



check_1 = GrammarStats.new
check_1.check("This is a string.")
check_1.check("This is a string.")
check_1.check("This is a string")
result = check_1.percentage_good
# output => 67%




4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

