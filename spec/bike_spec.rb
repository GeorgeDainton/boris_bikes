require 'bike'

describe Bike do
  it 'responds to working? method' do 
    bike = Bike.new
    expect(bike.working?)
  end 
end  