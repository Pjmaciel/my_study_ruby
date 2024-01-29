class AssemblyLine
  VALUE_FAB_CAR = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    fab_per_hour = @speed * VALUE_FAB_CAR

    result = if @speed >= 1 && @speed <= 4
               fab_per_hour - (fab_per_hour * 0.9)
             elsif @speed >= 5 && @speed <= 8
               fab_per_hour - (fab_per_hour * 0.8)
             elsif @speed == 9
               fab_per_hour - (fab_per_hour * 0.9)
             elsif @speed == 10
               fab_per_hour - (fab_per_hour * 0.77)
             end

    result.round(2)
  end

  def working_items_per_minute
    result_min = production_rate_per_hour / 60
    result_min.round(2)
  end
end

car_per_hour = AssemblyLine.new(6).production_rate_per_hour
puts car_per_hour
