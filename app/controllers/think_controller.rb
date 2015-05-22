class ThinkController < ApplicationController
load 'lib/primitive_sense.rb'

	def index
	end

	def do
    # i = 0
    # while i != 80
    #   sleep(0.1)
    #   response = $sense.listen()
    #   if response != nil
    #         break
    #   end
    #   i += 1
    # end
    begin
      $sense.speak('!',params[:command])
      render json: {'response' => 'ok'}     
    rescue
      render json: {'response' => 'Error'}
    end

	end

  def getcommunications
    response = $sense.listen()
    render json: {'response' => (response != nil)? response : false}     
  end

end