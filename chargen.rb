require 'lib/character'
require 'lib/trav_functions'
require 'lib/trav_arrays'

me = Character.new
me.terms = average2
me.career = set_career
me.name = 'Allesandro'

stat_names = Character::STAT_NAMES
stat_names.each do |stat|
  me.set_stat(stat, make_stat)
end

puts "#{me.name} is a #{me.age} year old #{me.career} with a UPP of #{me.upp}."
# me.set_stat_mods
# me.show_stat_mods

test_career = 'Marines'
test_grade = 'E3'
puts "Rank is #{Ranks[test_career][test_grade]}."
