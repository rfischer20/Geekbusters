require 'spec_helper'

describe Geekbuster do
  let(:geekbuster){ Factory.create(:geekbuster) }
  
  it "should create geekbuster" do
    geekbuster.should be_persisted
  end
end
