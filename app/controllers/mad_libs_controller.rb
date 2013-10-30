class MadLibsController < ApplicationController
  def index
  	@mad_libs = MadLib.all
  	@mad_lib = MadLib.new

  	respond_to do |format|
  	  format.html
  	end
  end

  def create
  	#@madlib = MadLib.create(noun: params[:noun], verb: params[:verb], proper_noun: params[:proper_noun], adjective: params[:adjective])
  	@mad_lib = MadLib.create(params[:mad_lib])
 	puts "$$$$$$$$$$$$$$$"
 	puts @mad_lib.inspect
 	puts params[:mad_lib]
 	# puts params[:verb]
 	# puts params[:proper_noun]
 	puts "**************"
 	#binding.pry
  	respond_to do |format|
  	  format.js
  	end
  end

  def destroy
  	@mad_lib = MadLib.delete(params[:id])

  	respond_to do |format|
  	  format.js
  	end
  end
end
