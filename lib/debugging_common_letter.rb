def get_most_common_letter(text)
  counter = Hash.new(0)
  
  text.chars.each do |char|
    counter[char] += 1
  end
  counter.to_a.sort_by { |k, v| v }.reverse.select {|ele| ele[0] != " "}[0][0]
end

puts get_most_common_letter("the roof, the roof, the roof is on fire!")

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
# [1,2,3,4,5].select {|num| num.even? }     #=> [2, 4]