def todo_checker(text)
  fail "There's no text to check." if text.empty?
  if text.include? "#TODO"
    return true
  else
    return false
  end
end