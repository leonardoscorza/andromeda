class ThinkController < ApplicationController
load 'lib/primitive_sense.rb'

	def index
	end

	def do
		$try.speak('!',params[:command])
		render text:'a'
	end

end
