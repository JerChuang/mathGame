require './game'
require './players'



player1 = Players.new "PLAYER 1"
player2 = Players.new "PLAYER 2"
game1 = Game.new player1, player2
game1.start


# puts player1.name
# puts player2.name


# puts player1.score

# game1.question
