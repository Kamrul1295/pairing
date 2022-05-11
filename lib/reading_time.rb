def reading_time(text,wpm)
  return (text.split.length / wpm.to_f).ceil
end
p reading_time("text",300)
