class ThinkController < ApplicationController
load 'lib/primitive_sense.rb'

	def index
	end

	def do
		$sense.speak('!',params[:command])
    sleep(0.8)
    response = $sense.listen()
    render json: {'response' => response}
	end

end