require 'sinatra'
require './dice.rb'

get '/' do
  @name = "Kerri"
  erb :index
end

get '/diceroll/:number_of_dice' do
  @dice_rolls = roll_dice(params[:number_of_dice].to_i)

  erb :pretty_dice
end

private
def roll_dice(number_of_dice = 1)
  dice = Dice.new
  dice.roll(number_of_dice.to_i)

  dice.values
end
