#!/usr/bin/ruby
require_relative "ten_pin"
print "Welcome to ten pin! \n "

game = TenPin.new

while game.number_of_players == nil
  begin
    print "Number of players? (1 or 2)"
    no_players = gets
    game.number_of_players = no_players

    puts "you selected #{ game.number_of_players }"
  rescue StandardError => e
    puts "You can only select between 1 and 2 players #{ e }"
  end

end