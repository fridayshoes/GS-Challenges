class GrammarStats
  def initialize
  @true = 0
  @false = 0 
  end

  def check(text) # text is a string
    # fail "no text given" if text.empty?
    if text[0] == text[0].upcase && text.end_with?(".", "?", "!")
      @true = @true + 1
      return true
    else
      @false = @false + 1
      return false
    end
 
    
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
  end

  def percentage_good
    return "#{((@true.to_f/(@true.to_f + @false.to_f)) * 100).ceil.to_i}%"
    
    # Returns as an integer the  percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end