class Lasagna
  def remaining_minutes_in_oven(actual_minutes_in_oven)
        result = actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
        result = layers * 10
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    qtdLayers = preparation_time_in_minutes(number_of_layers)
    time = remaining_minutes_in_oven(actual_minutes_in_oven)

    result = qtdLayers - time 

    putTs = result > 1 ? "s": ""
    putLs = qtdLayer > 1 ? "s": ""

    puts " faltam #{result} minuto#{putTs} Para uma lasanha de #{qtdLayers} camada#{putLs}"

  end
end

lasanha = Lasagna.new
lasanha.total_time_in_minutes(1,1)