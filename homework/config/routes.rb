Homework::Application.routes.draw do

get "/rps/:choice", controller: 'rps', action: 'selection', as: 'mychoice'
get "/rps", controller: 'rps', action: 'index', as: 'index'

get "/poker", controller: 'poker', action: 'new_hand', as: 'poker'


get "/dice", controller: 'dice', action: 'dice_index', as: 'dice_index'
post "/dice/roll*point", controller: 'dice', action: 'roll', as: 'roll'
post "/dice/roll", controller: 'dice', action: 'first_roll'

end
