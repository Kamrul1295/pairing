class GrammarStats
  def initialize
    @punctuation = [".", "!", "?", ",", ";"]
    @attempts = 0
    @passes = 0
  end

  def check(text) 
    text_arr = text.split("")
    first_char = text[0]
    last_char = text[-1]
    
    fail "no text given" if text.empty?
    if first_char = first_char.upcase && @punctuation.include?(last_char)
      @attempts += 1
      @passes += 1
      return true 
    else
      @attempts += 1
      return false
    end
  end
  
    def percentage_good
      percent = @passes.to_f / @attempts.to_f * 100
      return percent.to_i
    end
end
