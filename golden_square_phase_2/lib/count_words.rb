def count_words(input)
  words = input.split(" ")
  puts "There are " + words.size.to_s + " words in the string!"
end

def get_most_common_letter(text)
  counter = Hash.new(0)
  text = text.delete(' ')
  text.chars.each do |char|
    counter[char] += 1
  end
  counter = counter.sort_by { |k, v| v }.reverse
  p counter[0][0]
end

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

get_most_common_letter("the roof, the roof, the roof is on fire!")