class MagnetsController < ApplicationController

  def index
  	@allMagnets = Image.find(:all)
  end

  def view
  	@magnets = Image.find(params[:id])
  	@poles  = Pole.find(params[:id])
  	@attributes = Attribute.find(params[:id])
  	@allMagnets = Image.find(:all)
  end

end
