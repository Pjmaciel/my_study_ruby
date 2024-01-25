def ceaserCipher(text, number)
    alphabet = { 'A' => 1, 'B' => 2, 'C' => 3, 'D' => 4, 'E' => 5,
             'F' => 6, 'G' => 7, 'H' => 8, 'I' => 9, 'J' => 10,
             'K' => 11, 'L' => 12, 'M' => 13, 'N' => 14, 'O' => 15,
             'P' => 16, 'Q' => 17, 'R' => 18, 'S' => 19, 'T' => 20,
             'U' => 21, 'V' => 22, 'W' => 23, 'X' => 24, 'Y' => 25,
             'Z' => 26 }
    prhaseOutput = ""
    separateVowels = text.chars

    separateVowels.each do |vowel|
        vowelForNumber = vowel.upcase
            if alphabet.key?(vowelForNumber)
                puts "#{vowel} está no hash alphabet com valor #{alphabet[vowelForNumber]}"
                
                # Somar number ao valor associado à vogal
                some = alphabet[vowelForNumber].to_i + number.to_i

                # Ajustar some se ultrapassar 26
                some = some % 26 if some > 26

                # Verificar se há uma letra correspondente ao valor somado no hash alphabet
                if alphabet.values.include?(some)
                    vowelFoNumber = alphabet.key(some)
                    puts "A letra correspondente ao valor #{some} é #{vowelFoNumber}"
                    prhaseOutput << vowelForNumber
                else
                    puts "Não há letra correspondente ao valor #{some} no hash"
                end
            else
                puts "#{vowel} não está no hash alphabet"
                prhaseOutput << vowel
            end
        end
    

end


ceaserCipher("test", 5)