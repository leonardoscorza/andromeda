class ConsoleController < ApplicationController
load 'lib/primitive_sense.rb'

def index
	try = PrimitiveSense.new
	try.speak('!','THINK abc')
end

end
