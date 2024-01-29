module Port
  INDENTIFIER = :PALE

  def self.get_identifier(city)
    @city = city.slice(0,4).upcase
  end

  def self.get_terminal(ship_identifier)
    if ship_identifier == "OIL" || ship_identifier == "OIL"
        :A
    else
        :B 
  end
end

ship = Port.get_identifier("Hamburg") 
puts " #{ship}" 