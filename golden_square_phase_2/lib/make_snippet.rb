def make_snippet(input)
  words = input.split(" ")
  if words.size <= 5
    puts input
  else
    first_5_words = words[0, 5].join(" ")
    puts first_5_words + "..."
  end
end
