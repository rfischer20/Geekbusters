class SearchController < ApplicationController
  
  def find
    @geekbusters = Geekbuster.where(skills: params[:query])    
    
    render 'results'
  end
end
