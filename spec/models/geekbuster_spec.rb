require 'spec_helper'

describe Geekbuster do
  let(:geekbuster){ Factory.create(:geekbuster) }
  
  it "should create geekbuster" do
    geekbuster.id.should_not be_nil
  end
end
