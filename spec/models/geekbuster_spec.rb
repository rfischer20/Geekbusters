require 'spec_helper'

describe Geekbuster do
  let(:geekbuster){ Factory(:geekbuster) }
  let(:geekbuster_team){ Factory(:geekbuster_team) }
  let(:team){ Factory(:team) }
  
  it "should create geekbuster" do
    geekbuster.should be_persisted
  end
  
  it "should be invalid with no first name" do
    geekbuster = Factory.build(:geekbuster, :first_name => nil)
    geekbuster.should be_invalid
  end  
  
  it "should be invalid with no last name" do
    geekbuster = Factory.build(:geekbuster, :last_name => nil)
    geekbuster.should be_invalid
  end  
  
  it "should have team" do
    geekbuster_team
    Geekbuster.first.team.should === geekbuster_team.team
  end
end
