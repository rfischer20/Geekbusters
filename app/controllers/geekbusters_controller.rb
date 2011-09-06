class GeekbustersController < ApplicationController
  def index
    @geekbusters = Geekbuster.all
  end
  
  def new
    @geekbuster = Geekbuster.new
    @geekbuster.address = Address.new
  end
  
  def create
    @geekbuster = Geekbuster.new(params[:geekbuster])
    
    if @geekbuster.save
      redirect_to @geekbuster
    else
      render :action => "new"
    end
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
