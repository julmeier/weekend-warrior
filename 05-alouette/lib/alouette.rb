# encoding: utf-8

class Alouette
KEYWORDS = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue"]
ET_KEYWORDS = KEYWORDS.map { |keyword| "Et " + keyword + "!" }


  ### `lines_for_verse`
  # `Alouette#lines_for_verse` will do the work of generating all those `Et <part>!` lines for a given verse. It should return an array of strings, without repeats. For example, if you were to call `lines_for_verse(2)`, it would return
  # ["Et les yeux!", "Et le bec!", "Et la tête!"]
  # Note that verses are 0-indexed.
  def self.lines_for_verse(verse_num)
    lines = []
    (verse_num+1).times do |num|
      index_array = Array.new(ET_KEYWORDS[0..num]).reverse!
      # puts "num = #{num}"
      lines[num] = index_array
      # puts "INSIDER:#{lines[num]}"
    end
    # puts lines[verse_num]
    lines[verse_num]
  end

  def self.verse(verse_num)
    lines = Alouette.lines_for_verse(verse_num)
    # puts "Lines: #{lines}"
    verse = ("Je te plumerai " + KEYWORDS[verse_num] + "\n")*2

    lines.each do |line|
      verse = verse + (line + "\r\n")*2
    end

    verse_end = "Alouette!" + "\n"
    verse_end = verse_end + "Alouette!" + "\n"
    verse_end = verse_end + "A-a-a-ah" + "\n"
    # puts "Verse_end: #{verse_end}"

    verse = verse + verse_end

    # puts "Verse:"
    # puts "#{verse}"
    verse
  end

  def self.sing
    refrain = ""
    refrain = "Alouette, gentille alouette," + "\n" + "Alouette, je te plumerai." + "\n"
    # puts "REFRAIN:"
    # puts refrain

    song = ""
    3.times do |verse_num|
      song = song + "\n" + refrain + "\n"+ Alouette.verse(verse_num)
    end

    puts "**************"
    puts song



  end
end
#
# Alouette.lines_for_verse(0)
# Alouette.verse(2)
Alouette.sing
