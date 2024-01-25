def subStrings(word, dictionary)
  counts = Hash.new(0)

  dictionary.keys.each do |substring|
    counts[substring] += word.downcase.scan(/#{substring.downcase}/).size
  end

  puts counts
end


myDictionary = { 'natal' => 0, 'bigorna' => 0, 'imortal' => 0, 'esportes' => 0, 
                 'cabana' => 0, 'pilula' => 0, 'cinco' => 0, 'passaro' => 0, 'alfarrobeira' => 0, 'operadores' => 0 }
subStrings("natal na cabana, com uma bigorna imortal", myDictionary)