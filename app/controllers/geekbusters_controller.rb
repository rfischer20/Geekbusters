class GeekbustersController < ApplicationController
  def index
    @geekbusters = Geekbuster.all
  end
  
  def new
    @geekbuster = Geekbuster.new
  end
  
  def create
    @geekbuster = Geekbuster.create(params[:geekbuster])
    
    redirect_to @geekbuster
  end
  
  def show
    @geekbuster = Geekbuster.find(params[:id])
  end
  
  def edit
    @geekbuster = Geekbuster.find(params[:id])    
  end
  
  def update
    @geekbuster = Geekbuster.find(params[:id])
    @geekbuster.update_attributes(params[:geekbuster])
    
    redirect_to @geekbuster
  end
  
  def destroy
    @geekbuster = Geekbuster.find(params[:id])
    @geekbuster.destroy
    
    redirect_to geekbusters_path
  end
end
