require 'spec_helper'

describe SearchController do
  render_views

  describe "GET find" do
    it "should be success" do
      get :find
      response.should be_success
    end
    
    it "should query results" do
      geekbusters = FactoryGirl.create_list(:geekbuster, 5)
      Factory(:geekbuster, :skills => ["CSS", "HTML"])
      get :find, {:query => "CSS"}
      
      assigns[:geekbusters].length.should == 1
    end
  end
  
end
