Rails.application.routes.draw do
  post '/memberships', to: 'memberships#create'
  get '/gyms/:id', to: 'gyms#show'
  delete '/gyms/:id', to: 'gyms#destroy'
  get '/clients/:id', to: 'clients#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
