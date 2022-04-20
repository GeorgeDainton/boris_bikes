require 'docking_station'

describe DockingStation do
  let(:docking_station) { DockingStation.new }
  it "should release bike" do
    expect(docking_station.release_bike)
  end 
  it "should return an instance of Bike" do
    expect(docking_station.release_bike).to be_a Bike
  end
end