def caesarCipher(text, number)
  alphabet = {
    'A' => 1, 'B' => 2, 'C' => 3, 'D' => 4, 'E' => 5,
    'F' => 6, 'G' => 7, 'H' => 8, 'I' => 9, 'J' => 10,
    'K' => 11, 'L' => 12, 'M' => 13, 'N' => 14, 'O' => 15,
    'P' => 16, 'Q' => 17, 'R' => 18, 'S' => 19, 'T' => 20,
    'U' => 21, 'V' => 22, 'W' => 23, 'X' => 24, 'Y' => 25,
    'Z' => 26
  }

  phrase_output = ""
  separated_letters = text.chars

  separated_letters.each do |letter|
    letter_upcase = letter.upcase
    if alphabet.key?(letter_upcase)
      # puts "#{letter} está no hash alphabet com valor #{alphabet[letter_upcase]}"
      
      # Somar number ao valor associado à letra
      shifted_value = alphabet[letter_upcase].to_i + number.to_i

      # Ajustar shifted_value se ultrapassar 26
      shifted_value = shifted_value % 26 if shifted_value > 26

      # Encontrar a letra correspondente ao valor somado no hash alphabet
      letter_for_number = alphabet.key(shifted_value)
      # puts "A letra correspondente ao valor #{shifted_value} é #{letter_for_number}"
      phrase_output << letter_for_number.downcase if letter == letter.downcase
      phrase_output << letter_for_number.upcase if letter == letter.upcase
    else
      # puts "#{letter} não está no hash alphabet"
      phrase_output << letter
    end
  end

  puts "Frase codificada: #{phrase_output}"
end

caesarCipher("What a string!", 5)
