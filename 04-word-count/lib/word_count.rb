#Julia Meier
#word_count.rb

require 'awesome_print'


def words(input_words)
  array = input_words.split(" ")
  hash = {}

  array.each do |word|
    occurrences = array.count(word)
    hash[word] = occurrences
  end
  ap hash
  return hash


end
