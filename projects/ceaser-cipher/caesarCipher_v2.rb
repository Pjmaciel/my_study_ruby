def caesar_cipher(text, number)
  alphabet = ('A'..'Z').to_a
  phrase_output = ""

  text.each_char do |char|
    char_upcase = char.upcase

    if alphabet.include?(char_upcase)
      original_index = alphabet.index(char_upcase)
      shifted_index = (original_index + number) % 26
      shifted_char = alphabet[shifted_index]

      phrase_output << (char == char_upcase ? shifted_char : shifted_char.downcase)
    else
      phrase_output << char
    end
  end

  puts "Frase codificada: #{phrase_output}"
end

# Exemplo de uso:
caesar_cipher("What a string!", 5)

puts "---------------------------"

caesar_cipher("Bmfy f xywnsl!", 5)