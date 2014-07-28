load 'lib/primitive_sense.rb'

while $sense.listen() != nil
  p 'clear'
end