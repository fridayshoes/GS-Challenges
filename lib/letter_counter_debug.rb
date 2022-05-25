class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    counter = Hash.new(0) # Changed [1] --> [0] to get i
    # binding.irb
    most_common = nil
    most_common_count = 1
    @text.chars.each do |char|
      # binding.irb # char --> Returns each letter of text 
      next unless is_letter?(char)
      # binding.irb # is_letter?(char) --> Removes the space
      counter[char] = (counter[char] || 1) + 1
      # binding.irb # counter[char] --> creates the key in the hash
      # binding.irb # (counter[char] || 1) + 1 --> Needs further testing (See explaination at bottom)
      if counter[char] > most_common_count
        most_common = char
        most_common_count = counter[char] # Changed += to =
      end
    end
    return [most_common_count, most_common]
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-z]/i
  end
end

counter = LetterCounter.new("Digital Punk")
p counter.calculate_most_common

# Intended output:
# [2, "i"]


# Explanation

# My understanding is that the counter[char] = part creates the key in the hash counter which represents the letters from the given text. In the part after the equals sign, the letter is either being assigned a count of 1, or if it already exists it’s the current value found in the hash. 1 is then being added to whatever value is present
# I think my words should be saying the following, if ‘a’ already exists in the hash:
# counter = {'a', 2}
# counter['a'] = (counter['a') + 1 # Counter['a'] has a value of 2 (going by the value of 1 the exercise starts with) 

# But if our counter hash is empty:
# counter = {} 
# counter['a'] = (1) + 1 # so counter[a'] would have a value of 2