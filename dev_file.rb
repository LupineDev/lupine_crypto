# This file will be used for early testing
require "lib/ceasar.rb"

ceasar = Ceasar.new
#encrypt
puts ceasar.encrypt("abcdefg", -2)
puts ceasar.encrypt("hello world", 23)
puts ceasar.decrypt("EBIIL TLOIA", 23)
