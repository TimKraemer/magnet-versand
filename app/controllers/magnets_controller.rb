class MagnetsController < ApplicationController

  def index
  	@allMagnets = Magnet.find(:all)
  end

  def view
    @choosenMagnet = Magnet.find_by(category: params[:category])
  end

  def create
  	@allMagnets = Image.find(:all)
    @purchase = Magnet.create(params[:purchase].permit(:Attributes, :Pole,  :Marked, :Quality, :coating, :quantity))
  end

end
