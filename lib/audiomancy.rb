
class String
  define_method(:music_encryption) do

    musicCipher = {"a" => "e",
                   "b" => "e",
                   "c" => "d#",
                   "d" => "f#",
                   "e" => "c",
                   "f" => "c",
                   "g" => "g#",
                   "h" => "c",
                   "i" => "f",
                   "j" => "f",
                   "k" => "a#",
                   "l" => "f#",
                   "m" => "g#",
                   "n" => "g",
                   "o" => "a",
                   "p" => "c",
                   "q" => "b",
                   "r" => "d",
                   "s" => "g#",
                   "t" => "a",
                   "u" => "c#",
                   "v" => "c#",
                   "w" => "c#",
                   "x" => "a#",
                   "y" => "f",
                   "z" => "d",
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

    musicCipher = {"e" => "a / b",
                   "d#" => "c",
                   "f#" => "d / l",
                   "c" => "e / f / h / p",
                   "g#" => "g / m / s",
                   "f" => "i / j / y",
                   "a#" => "k / x",
                   "g" => "n",
                   "a" => "o / t",
                   "b" => "q",
                   "d" => "r / z",
                   "c#" => "u / v / w",
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
    outputArray.join(" |  +  | ")
  end
end
