def check_grammar (text)
  fail "no text given" if text.empty?
  last_character_is_full_stop = text[-1] == "."
  first_letter_is_uppercase = text [0] == text[0].upcase
  if first_letter_is_uppercase && last_character_is_full_stop
    return true 
  else
    return false
  end
end