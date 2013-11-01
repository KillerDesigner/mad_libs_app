class MadLibsController < ApplicationController
  def index
  	#@mad_libs = MadLib.all
    @mad_libs = MadLib.paginate(page: params[:page], per_page: 4) 
    @mad_lib = MadLib.new

  	respond_to do |format|
  	  format.html
  	end
  end

  def create 	
  	@mad_lib = MadLib.create(params[:mad_lib])

  	respond_to do |format|
  	  format.js
  	end
  end

  def destroy
  	@mad_lib = MadLib.delete(params[:id])
    @id = params[:id]

  	respond_to do |format|
  	  format.js
  	end
  end
end
