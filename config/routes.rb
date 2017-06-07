Rails.application.routes.draw do
  post '/query', to: 'queries#query' 
end
