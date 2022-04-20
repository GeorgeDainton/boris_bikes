require 'bike'

describe Bike do
  it 'responds to working? method' do 
    bike = Bike.new
    expect(bike.working?)
  end 

  it "should return a working Bike" do
    bike = Bike.new
    expect(bike.working?).to be_truthy
  end
end  