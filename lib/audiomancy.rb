class String
  define_method(:music_encryption) do

    musicCipher = {"a" => "<div class='col-md-1 e'>e</div>",
                   "b" => "<div class='col-md-1 e'>e</div>",
                   "c" => "<div class='col-md-1 dSharp'>d#</div>",
                   "d" => "<div class='col-md-1 fSharp'>f#</div>",
                   "e" => "<div class='col-md-1 c'>c</div>",
                   "f" => "<div class='col-md-1 c'>c</div>",
                   "g" => "<div class='col-md-1 gSharp'>g#</div>",
                   "h" => "<div class='col-md-1 c'>c</div>",
                   "i" => "<div class='col-md-1 f'>f</div>",
                   "j" => "<div class='col-md-1 f'>f</div>",
                   "k" => "<div class='col-md-1 aSharp'>a#</div>",
                   "l" => "<div class='col-md-1 fSharp'>f#</div>",
                   "m" => "<div class='col-md-1 gSharp'>g#</div>",
                   "n" => "<div class='col-md-1 g'>g</div>",
                   "o" => "<div class='col-md-1 a'>a</div>",
                   "p" => "<div class='col-md-1 c'>c</div>",
                   "q" => "<div class='col-md-1 b'>b</div>",
                   "r" => "<div class='col-md-1 d'>d</div>",
                   "s" => "<div class='col-md-1 gSharp'>g#</div>",
                   "t" => "<div class='col-md-1 a'>a</div>",
                   "u" => "<div class='col-md-1 cSharp'>c#</div>",
                   "v" => "<div class='col-md-1 cSharp'>c#</div>",
                   "w" => "<div class='col-md-1 cSharp'>c#</div>",
                   "x" => "<div class='col-md-1 aSharp'>a#</div>",
                   "y" => "<div class='col-md-1 f'>f</div>",
                   "z" => "<div class='col-md-1 d'>d</div>",
                   " " => ""}

    outputArray = []

    inputArray = self.downcase().split("")

    inputArray.each do |letter|
      if letter =~ /[a-zA-Z]/
      outputArray.push(musicCipher.fetch(letter))
      end
    end
    outputArray.join(" ")
  end

  define_method(:music_decryption) do

    musicCipher = {"e" => "<div class='col-md-1 e' type='button' onclick='playAudio()'>a</div><div class='col-md-1 e' type='button' onclick='playAudio()'>b</div>",
                   "d#" => "<div class='col-md-1 dSharp' type='button' onclick='playAudio()'>c</div>",
                   "f#" => "<div class='col-md-1 fSharp' type='button' onclick='playAudio()'>d</div><div class='col-md-1 fSharp' type='button' onclick='playAudio()'>l</div>",
                   "c" => "<div class='col-md-1 c' type='button' onclick='playAudio()'>e</div><div class='col-md-1 c' type='button' onclick='playAudio()'>f</div><div class='col-md-1 c' type='button' onclick='playAudio()'>h</div><div class='col-md-1 c' type='button' onclick='playAudio()'>p</div>",
                   "g#" => "<div class='col-md-1 gSharp' type='button' onclick='playAudio()'>g</div><div class='col-md-1 gSharp' type='button' onclick='playAudio()'>m</div><div class='col-md-1 gSharp' type='button' onclick='playAudio()'>g</div>",
                   "f" => "<div class='col-md-1 f' type='button' onclick='playAudio()'>i</div><div class='col-md-1 f' type='button' onclick='playAudio()'>j</div><div class='col-md-1 f' type='button' onclick='playAudio()'>y</div>",
                   "a#" => "<div class='col-md-1 aSharp' type='button' onclick='playAudio()'>k</div><div class='col-md-1 aSharp' type='button' onclick='playAudio()'>x</div>",
                   "g" => "<div class='col-md-1 g' type='button' onclick='playAudio()'>n</div>",
                   "a" => "<div class='col-md-1 a' type='button' onclick='playAudio()'>o</div><div class='col-md-1 a' type='button' onclick='playAudio()'>t</div>",
                   "b" => "<div class='col-md-1 b' type='button' onclick='playAudio()'>q</div>",
                   "d" => "<div class='col-md-1 d' type='button' onclick='playAudio()'>r</div><div class='col-md-1 d type='button' onclick='playAudio()'z</div>",
                   "c#" => "<div class='col-md-1 cSharp' type='button' onclick='playAudio()'>u</div><div class='col-md-1 cSharp' type='button' onclick='playAudio()'>v</div><div class='col-md-1 cSharp' type='button' onclick='playAudio()'>w</div>",
                   " " => ""}

    outputArray = []

    inputArray = self.downcase().split("")

counter = 0
    inputArray.each do |letter|
      if inputArray[counter+1] == "#" && letter =~ /[a-gA-G]/
        note = musicCipher.fetch(letter+"#")
        outputArray.push(note)
        counter = counter + 1
      elsif letter =~ /[a-gA-G]/
          outputArray.push(musicCipher.fetch(letter))
          counter = counter + 1
      else
        counter = counter + 1
      end
    end
    outputArray.join("")
  end

define_method(:music_decryption_two) do
    musicCipher_two = {"e" => "ab",
                       "d#" => "c",
                       "f#" => "dl",
                       "c" => "efhp",
                       "g#" => "gmg",
                       "f" => "ijy",
                       "a#" => "kx",
                       "g" => "n",
                       "a" => "ot",
                       "b" => "q",
                       "d" => "rz",
                       "c#" => "uvw",
                       " " => ""}

    outputArray_two = []
    counter = 0

    inputArray = self.downcase().split("")
    inputArray.each do |letter|
      if letter =~ /[a-gA-G]/ && inputArray[counter+1] == "#"
        note = musicCipher_two.fetch(letter+"#")
        outputArray_two.push(note)
        counter = counter + 1
      elsif letter =~ /[a-gA-G]/
          outputArray_two.push(musicCipher_two.fetch(letter))
          counter = counter + 1
      else
        counter = counter + 1
      end
    end
    outputArray_two.join(" ")
  end
end
