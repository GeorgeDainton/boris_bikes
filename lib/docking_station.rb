class DockingStation
  attr_accessor :bikes

  def initialize(bikes)
    @bikes = [bikes]
  end

  def release_bike
    if @bikes.any? do |bike|
      bike.instance_of?(Bike)
      end
      Bike.new 
    else
      raise StandardError
    end
  end 

  def dock(bike)
  end
end