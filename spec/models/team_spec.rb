require 'spec_helper'

describe Team do
  let(:team){ Factory(:team) }
  
  it "should create team" do
    team.should be_persisted
  end
  
  it "should be invalid for no name" do
    team = Factory.build(:team, :name => nil)
    team.should be_invalid
  end
  
  it "should have many geeks" do 
    5.times do
      team.geekbusters.create(Factory.attributes_for(:geekbuster))
    end
    Team.first.geekbusters.length.should == 5
  end
end
