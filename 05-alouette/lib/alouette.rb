# encoding: utf-8

class Alouette
KEYWORDS = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]
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
    verse = ("Je te plumerai " + KEYWORDS[verse_num] + "." + "\n")*2

    lines.each do |line|
      verse = verse + (line + "\r\n")*2
    end

    verse = verse + "Alouette!\nAlouette!\nA-a-a-ah\n"

    # puts "Verse:"
    # puts "#{verse}"
    verse
  end

  def self.sing
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai.\n"

    song = refrain + "\n"
    8.times do |verse_num|
      song = song + Alouette.verse(verse_num) + "\n" + refrain
      # if verse_num = 7
      #   song = song + "\n"
      # end
    end

    puts "**************"
    puts song
      puts "**************"
    song


  end
end
#
# Alouette.lines_for_verse(7)
# Alouette.verse(2)
# Alouette.sing
