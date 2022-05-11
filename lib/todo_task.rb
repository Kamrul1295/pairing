def todo_task(text)
  if not(text.is_a? String)
    fail "No text given"
  elsif text.include? "#TODO"
    return "true"
  else 
    return "false"
  end
end
