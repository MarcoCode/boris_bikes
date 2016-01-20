require "dockingStation.rb"
  


describe DockingStation do
    
  it "Responds to .release_bike" do
    expect(subject).to respond_to(:release_bike)
  end
  
describe "#release_bike" do
  it "release a bike when at least one bike is docked" do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
  end
   it "Raises an error when trying to release a bike when no bikes available " do
     expect { subject.release_bike }.to raise_error "No Bikes Available"
  end
end
describe "#dock_bike" do
  it "Responds to .dock_bike" do
    expect(subject).to respond_to(:dock_bike)
  end
  it "Returns an error when the station is full" do
    21.times { subject.dock_bike Bike.new }
    expect { subject.dock_bike(Bike.new) }.to raise_error "The Station is Full"
  end
  
  pending describe "#full?" do
    it "responds to .full?" do
      expect(subject).to respond_to(:full?)
    end
    it "Returns false when the station is not full" do
      expect(subject.full?).to eq false
    end
    it "Returns true when the station is full" do
      21.times { subject.dock_bike(Bike.new)}
      expect(subject.full?).to eq true
    end
  end
  
  pending describe "#empty?" do
    it "responds to .empty?" do
      expect(subject).to respond_to(:empty?)
    end
    it "Returns true when the station is empty" do
      expect(subject.empty?).to eq true
    end
    it "Returns false when the station is not empty" do 
      subject.dock_bike(Bike.new)
      expect(subject.empty?).to eq false
    end
  end
  
end
  it "Can access the @bikes instance variable" do
    expect(subject.bikes).to eq []
  end
  
 it "Adds an instance of Bike to an instance of DockingStation using .dock_bike" do
    expect(subject.dock_bike(Bike.new)).to eq subject.bikes
  end
  
end
