require 'sinatra'
require './dice.rb'

get '/' do
  "hi everyone"
end

get '/diceroll' do
  erb :dice_form
end

post '/diceroll' do
  roll_dice(params[:number_of_dice].to_i)
end

private
def roll_dice(number_of_dice = 1)
  dice = Dice.new
  dice.roll(number_of_dice.to_i)

  dice.values.to_s
end
