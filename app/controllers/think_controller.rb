class ThinkController < ApplicationController
load 'lib/primitive_sense.rb'

	def index
	end

	def do
		$sense.speak('!',params[:command])

    i = 0
    while i != 40
      sleep(0.1)
      response = $sense.listen()
      if response != nil
            break
      end
      i += 1
    end

    if response != nil
      render json: {'response' => response}
    else
      render json: {'response' => 'Not response'}
    end

	end

end