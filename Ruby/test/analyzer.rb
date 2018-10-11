stopwords = %w{the a by on for of are with just but and to the my I has some in}

lines = File.readlines("oliver.txt")
line_count = lines.length
text = lines.join
total_characters = text.length
total_characters_nospaces = text.gsub(/\s+/,"").length
word_count = text.split(" ").length
all_words=text.split(" ")
good_words= all_words.reject{|element|stopwords.include?(element)}
good_percentage=((good_words.length.to_f/word_count.to_f)*100).to_i
sentece_count= text.split(/\.|\?|!/).length
paragraph_count= text.split(/\n\n/).length
puts "#{line_count} lines"
puts "#{total_characters_nospaces} characters"
puts "#{word_count} words"
puts "#{sentece_count} setences"
puts "#{paragraph_count} paragraph"
puts "#{sentece_count/paragraph_count} average sentences per paragraph"
puts "#{word_count/sentece_count} average words per sentences"
puts "#{"#{good_percentage}% of words are non-fluff words"}"