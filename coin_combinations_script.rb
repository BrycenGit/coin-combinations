#!/usr/bin/env ruby
require './lib/coin_combinations'

puts '$$$$$$$$$$$$$$$$$$$$$$$'
puts 'Please enter how much change you have.'
puts '$$$$$$$$$$$$$$$$$$$$$$$'
input = gets.chomp
new_change = Change.new(input.to_i)
puts new_change.sorter()
