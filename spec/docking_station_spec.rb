require 'docking_station'

describe DockingStation do
  let(:bike) { Bike.new }
  let(:docking_station) { DockingStation.new(bike) }
  
  it "should release bike" do
    expect(docking_station.release_bike)
  end 
  it "should return an instance of Bike" do
    expect(docking_station.release_bike).to be_a Bike
  end
  it "should dock bike" do
    expect(docking_station.dock(bike))
  end
  it "should display bikes" do
    expect(docking_station.bikes).to eq [bike]
  end
  it "release bike should return error when none available" do
    empty_docking_station = DockingStation.new(nil)
    expect { empty_docking_station.release_bike }.to raise_error(StandardError)
  end
end