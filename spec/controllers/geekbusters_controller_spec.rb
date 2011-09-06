require 'spec_helper'

describe GeekbustersController do
  render_views
  
  describe "GET index" do
    before(:each) do
      get :index      
    end
    
    it "should be success" do
      response.should be_success
    end
    
  end

  describe "GET new" do
    before(:each) do
      get :new      
    end
    
    it "should be success" do
      response.should be_success
    end
    
    it "should assign geekbuster" do
      assigns[:geekbuster].should_not be_nil
    end
  end
  
  describe "POST create" do
    before(:each) do
      post :create, {:geekbuster => Factory.attributes_for(:geekbuster)}      
    end
    
    it "should create new geekbuster" do
      Geekbuster.all.length.should == 1
    end
    
    # it "should add address" do
    #   
    # end
    
    it "should redirect" do
      response.should be_redirect      
    end
  end
  
  describe "GET show" do
    let(:geekbuster){ Factory(:geekbuster) }
    
    before(:each) do
      get :show, {:id => geekbuster.id}      
    end
    
    it "should assign geekbuster" do      
      assigns[:geekbuster].should === geekbuster
    end    
  end
  
  describe "GET edit" do
    let(:geekbuster){ Factory(:geekbuster) }
    
    before(:each) do
      get :edit, {:id => geekbuster.id}      
    end
    
    it "should assign geekbuster" do      
      assigns[:geekbuster].should === geekbuster
    end    
  end
  
  describe "POST update" do
    let(:geekbuster){ Factory(:geekbuster) }
    
    before(:each) do
      post :update, {:id => geekbuster.id, :geekbuster => {:first_name => 'Tex'}}      
    end
    
    it "should update geekbuster" do      
      Geekbuster.first.first_name.should == "Tex"
    end    
    
    it "should redirect" do
      response.should be_redirect      
    end
  end  
  
  describe "Post destroy" do
    let(:geekbuster){ Factory(:geekbuster) }
    
    before(:each) do
      post :destroy, { :id => geekbuster.id }      
    end
    
    it "should destroy geekbuster" do
      Geekbuster.all.length.should == 0
    end
  end
end
