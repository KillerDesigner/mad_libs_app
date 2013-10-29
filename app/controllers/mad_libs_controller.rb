class MadLibsController < ApplicationController
  def index
  	@madlibs = MadLib.all
  	@madlib = MadLib.new

  	respond_to do |format|
  	  format.html
  	end
  end

  def create
  	@madlib = MadLib.create(noun: params[:noun], verb: params[:verb], proper_noun: params[:proper_noun], adjective: params[:adjective])
 	puts "$$$$$$$$$$$$$$$"
 	puts @madlib.inspect
 	puts params[:noun]
 	puts params[:verb]
 	puts params[:proper_noun]
 	puts "**************"
 	#binding.pry
  	respond_to do |format|
  	  format.js
  	end
  end

  def destroy
  	@madlib = MadLib.delete(params[:id])

  	respond_to do |format|
  	  format.js
  	end
  end
end
