def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars) # <=== Corrected code. Previously was ('a'...'z')
  # p "stage 1 is #{(('a'...'z').to_a - key.chars)}" # missing lots of characters
  # p "stage 1.1 is #{('a'...'z').to_a}" # missing z - too many ... , should be ..
  ciphertext_chars = plaintext.chars.map do |char|
    # p "stage 2 is #{char}"
    # p "stage 3 is #{cipher.find_index(char)}" # Found problem: there's no integer for z 
    (65 + cipher.find_index(char)).chr # <== Here's where the code first breaks according to RSpec
    end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars) # Same issue as above. Previously was ('a'...'z')
  # p "stage 5 is #{cipher}" # gives us our cipher array (we now know the index of each letter)
  plaintext_chars = ciphertext.chars.map do |char|
    # p "stage 4 is #{char}" # = E
    # p "stage 3 is #{char.ord}" # E.ord gives a value of 69
    cipher[char.ord - 65] # <=== Corrected code. Previously was cipher[65 - char.ord]
    # p "stage 2 is #{cipher[65 - char.ord]}" # 65 - 69 = -4 (this is our error, should be 69 - 65)
    # p "stage 1 is #{cipher.find_index("t")}" # take t (the first letter of ourtesting the index of t, gives us an index of 4
    # p "stage 0 is #{cipher[4]}"
  end
  return plaintext_chars.join
end

# puts encode("theswiftfoxjumpedoverthelazydog", "secretkey") # Testing Encode

# puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey") # Testing Encode