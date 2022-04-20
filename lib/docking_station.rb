class DockingStation
  attr_accessor :bikes

  def initialize(bikes)
    @bikes = [bikes]
  end

  def release_bike
    Bike.new
  end 

  def dock(bike)
  end
end