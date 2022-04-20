require 'docking_station'

describe DockingStation do
  let(:bike) { Bike.new }
  let(:docking_station) { DockingStation.new }
  
  it "should release bike" do
    docking_station.dock(Bike.new)
    expect(docking_station.release_bike)
  end 
  it "should return an instance of Bike" do
    docking_station.dock(Bike.new)
    expect(docking_station.release_bike).to be_a Bike
  end
  it "should dock bike" do
    empty_docking_station = DockingStation.new
    expect(empty_docking_station.dock(bike))
  end
  it "should display bikes" do
    docking_station.dock(bike)
    expect(docking_station.bikes).to eq [bike]
  end
  it "release bike should return error when none available" do
    empty_docking_station = DockingStation.new
    expect { empty_docking_station.release_bike }.to raise_error(StandardError)
  end
  it "dock should return an error when docking station full" do
    docking_station.dock(bike)
    expect { docking_station.dock(Bike.new) }.to raise_error(StandardError)
  end 
end