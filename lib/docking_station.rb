class DockingStation
  attr_accessor :bikes

  def initialize
    @bikes = []
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
    if @bikes.any? do |bike|
      bike.instance_of?(Bike)
      end 
      raise StandardError
    else  
      @bikes << bike 
    end 
  end
end