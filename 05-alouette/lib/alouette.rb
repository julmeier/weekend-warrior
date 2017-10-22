# encoding: utf-8

class Alouette
KEYWORDS = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue"]

  ### `lines_for_verse`
  # `Alouette#lines_for_verse` will do the work of generating all those `Et <part>!` lines for a given verse. It should return an array of strings, without repeats. For example, if you were to call `lines_for_verse(2)`, it would return
  # ["Et les yeux!", "Et le bec!", "Et la tête!"]
  # Note that verses are 0-indexed.
  def self.lines_for_verse(verse_num)
    et_keywords = KEYWORDS.map { |keyword| "et " + keyword }
    array_of_arrays = []

    verse_num.times do |num|
      index_array = Array.new(et_keywords[0..num])
      array_of_arrays[num] = index_array
    end

    final_array = []
    array_of_arrays.each_with_index do |array, index|
      final_array[index] = array.map {|i| "'" + i.to_s + "'" }.join(",")
      puts "final_array[index]: #{final_array[index] }"
    end
    final_array
  end

  def self.verse(verse_num)

  end

  def self.sing
    verse_num = Array.new(8){|index| index}

  end
end
