require 'spec_helper'

describe Address do
  let (:address) { Factory(:address) }
  
  
  it "should create successfully" do
    address.should be_persisted
  end
  
  it "should update" do
    address.state = "NY"
    address.save!
    Geekbuster.first.address.state.should == "NY"
  end
  
  it "should find Geeks with address" do
    geeks = Geekbuster.where("address.state" => address.state)
    geeks[0].should === address.addressable
  end
  
  it "should be invalid" do
    address = Address.new
    address.should be_invalid
  end
  
  it "should be invalid with no address_line1" do 
    address = Factory.build(:address, :address_line1 => nil)
    address.should be_invalid
  end  
  
  it "should be invalid with no city" do 
    address = Factory.build(:address, :city => nil)
    address.should be_invalid
  end  
  
  it "should be invalid with no state" do 
    address = Factory.build(:address, :state => nil)
    address.should be_invalid
  end  
  
  it "should be invalid with no zipcode" do 
    address = Factory.build(:address, :zipcode => nil)
    address.should be_invalid
  end 
  
  it "should geocode address" do
    address.coordinates.should_not be_empty
  end 
end
