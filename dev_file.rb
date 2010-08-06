# This file will be used for early testing
require "lib/ceasar.rb"


#numbers -> letters
ceasar = Ceasar.new
puts ceasar.to_numbers("ABCD")
#letters -> numbers

#encrypt
puts ceasar.encrypt("abcdefg", 2)
puts ceasar.encrypt("k", 2)
puts ceasar.encrypt("l", 2)
puts ceasar.encrypt("m", 2)
puts ceasar.encrypt("n", 2)
puts ceasar.encrypt("o", 2)
puts ceasar.encrypt("p", 2)
puts ceasar.encrypt("q", 2)
puts ceasar.encrypt("z", 2)

