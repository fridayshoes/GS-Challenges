def get_most_common_letter(text)
  counter = Hash.new(0)
  # p "Stage 1 #{counter}"
  text.chars.each do |char|
  # p "Stage 2 #{char}"
  # p "Stage 2.1 #{char[0]}"
    counter[char] += 1
#  p "Stage 3 #{counter[char] += 1}"
  end
  counter.to_a.sort_by { |k, v| -v }[1][0] # <=== Was { |k, v| v }[0][0]
  # p "Stage 5 #{counter.to_a.sort_by { | k, v | v  }}"
  # p "Stage 6 #{counter.to_a.sort_by { | k, v | -v }}" # Sorts array in decending order
  # p "Stage 7 #{counter.to_a.sort_by { | k, v | -v }}[1][0]" # Selects the 2nd key/value pair
end

# puts get_most_common_letter("the roof, the roof, the roof is on fire!")