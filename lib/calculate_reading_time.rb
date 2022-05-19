def calculate_reading_time(text)
  words = text.split(" ")
  return (words.length / 200.to_f).ceil # .ceil returns the smallest number greater than or equal to float
end