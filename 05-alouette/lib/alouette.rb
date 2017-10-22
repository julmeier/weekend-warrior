# encoding: utf-8

class Alouette
KEYWORDS = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue"]


  ### `lines_for_verse`
  # `Alouette#lines_for_verse` will do the work of generating all those `Et <part>!` lines for a given verse. It should return an array of strings, without repeats. For example, if you were to call `lines_for_verse(2)`, it would return
  # ["Et les yeux!", "Et le bec!", "Et la tête!"]
  # Note that verses are 0-indexed.
  def self.lines_for_verse(verse_num)
    et_keywords = KEYWORDS.map { |keyword| "Et " + keyword + "!" }

    lines = []
    (verse_num+1).times do |num|
      index_array = Array.new(et_keywords[0..num]).reverse!
      puts "num = #{num}"
      lines[num] = index_array
      puts "INSIDER:#{lines[num]}"
    end
    puts lines[verse_num]
    lines[verse_num]
  end

  def self.verse(verse_num)

  end

  def self.sing
    # verse_num = Array.new(8){|index| index}




  end
end
#
# Alouette.lines_for_verse(0)
