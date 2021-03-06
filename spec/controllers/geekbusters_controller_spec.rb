require 'spec_helper'

describe GeekbustersController do
  render_views
  
  context "GET index" do    
    it "should be success" do
      get :index      
      response.should be_success
    end
    
  end

  context "GET new" do
    it "should be success" do
      get :new      
      response.should be_success
    end
    
    it "should assign geekbuster" do
      get :new            
      assigns[:geekbuster].should_not be_nil
    end
  end
  
  context "POST create" do
    it "should create new geekbuster" do
      post :create, {:geekbuster => Factory.attributes_for(:geekbuster)}            
      Geekbuster.all.length.should == 1
    end    
    
    it "should redirect" do
      post :create, {:geekbuster => Factory.attributes_for(:geekbuster)}            
      response.should be_redirect      
    end
  end
  
  context "GET show" do
    let(:geekbuster){ Factory(:geekbuster) }
        
    it "should assign geekbuster" do      
      get :show, {:id => geekbuster.id}            
      assigns[:geekbuster].should === geekbuster
    end    
  end
  
  context "GET edit" do
    let(:geekbuster){ Factory(:geekbuster) }
        
    it "should assign geekbuster" do      
      get :edit, {:id => geekbuster.id}            
      assigns[:geekbuster].should === geekbuster
    end    
  end
  
  context "POST update" do
    let(:geekbuster){ Factory(:geekbuster) }    
    
    it "should update geekbuster" do      
      post :update, {:id => geekbuster.id, :geekbuster => {:first_name => 'Tex'}}            
      Geekbuster.first.first_name.should == "Tex"
    end    
    
    it "should redirect" do
      post :update, {:id => geekbuster.id, :geekbuster => {:first_name => 'Tex'}}            
      response.should be_redirect      
    end
  end  
  
  context "Post destroy" do
    let(:geekbuster){ Factory(:geekbuster) }
        
    it "should destroy geekbuster" do
      post :destroy, { :id => geekbuster.id }            
      Geekbuster.all.length.should == 0
    end
  end
end
