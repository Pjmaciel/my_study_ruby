class Lasagna
    EXPECTED_MINUTES_IN_OVEN = 40
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    result = EXPECTED_MINUTES_IN_OVEN -  actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
    layers * 2
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)

    qtd_layers = preparation_time_in_minutes(number_of_layers) 
    time = remaining_minutes_in_oven(actual_minutes_in_oven)

    result = EXPECTED_MINUTES_IN_OVEN - (time - qtd_layers)
    
    puts "Faltam #{result} minutos para uma lasanha de #{qtd_layers} camadas"    

  end
end

lasanha = Lasagna.new
tempo_restante = lasanha.total_time_in_minutes(number_of_layers: 1, actual_minutes_in_oven: 30)

