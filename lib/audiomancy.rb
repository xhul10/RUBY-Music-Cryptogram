
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

    musicCipher = {"e" => "<div class='col-md-1 e'>a</div><div class='col-md-1 e'>b</div>",
                   "d#" => "<div class='col-md-1 dSharp'>c</div>",
                   "f#" => "<div class='col-md-1 fSharp'>d</div><div class='col-md-1 fSharp'>l</div>",
                   "c" => "<div class='col-md-1 c'>e</div><div class='col-md-1 c'>f</div><div class='col-md-1 c'>h</div><div class='col-md-1 c'>p</div>",
                   "g#" => "<div class='col-md-1 gSharp'>g</div><div class='col-md-1 gSharp'>m</div><div class='col-md-1 gSharp'>g</div>",
                   "f" => "<div class='col-md-1 f'>i</div><div class='col-md-1 f'>j</div><div class='col-md-1 f'>y</div>",
                   "a#" => "<div class='col-md-1 aSharp'>k</div><div class='col-md-1 aSharp'>x</div>",
                   "g" => "<div class='col-md-1 g'>n</div>",
                   "a" => "<div class='col-md-1 a'>o</div><div class='col-md-1 a'>t</div>",
                   "b" => "<div class='col-md-1 b'>q</div>",
                   "d" => "<div class='col-md-1 d'>r</div><div class='col-md-1 d'>z</div>",
                   "c#" => "<div class='col-md-1 cSharp'>u</div><div class='col-md-1 cSharp'>v</div><div class='col-md-1 cSharp'>w</div>",
                   " " => ""}

    outputArray = []


    inputArray = self.downcase().split(" ")


counter = 0
    inputArray.each do |letter|
      if inputArray[counter+1] == "#" && letter == /[a-gA-G]/
        note = musicCipher.fetch(letter+"#")
        outputArray.push(note)
        counter = counter + 2
      elsif letter =~ /[a-gA-G]/
          outputArray.push(musicCipher.fetch(letter))
          counter = counter + 1
      else
        counter = counter + 1
      end
    end
    outputArray.join("")
  end
end
