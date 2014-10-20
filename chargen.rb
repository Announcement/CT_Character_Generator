#require_relative 'lib/character'
#require_relative 'trav_functions'
require 'lib/character'
require 'trav_functions'

me = Character.new
me.terms = average2
me.career = 'Scout'

stat_names = Character::STAT_NAMES
stat_names.each do |stat|
  me.set_stat(stat, make_stat)
end

puts "A #{me.age} year old #{me.career} with a UPP of #{me.upp}."

