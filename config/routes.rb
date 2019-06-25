Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # NEW
  get 'rollercoasters/new', to: "rollercoasters#new", as: "new_rollercoaster"
  # INDEX
  get '/rollercoasters', to: "rollercoasters#index"
  # CREATE
  post '/rollercoasters', to: "rollercoasters#create"
  # EDIT
  get '/rollercoasters/:id/edit', to: "rollercoasters#edit"
  # UPDATE
  patch '/rollercoasters/:id', to: "rollercoasters#update", as: "rollercoaster"
  # NEW RIDER
  get 'riders/new', to: "riders#new", as: "new_rider"
  # CREATE RIDER
  get '/riders', to: "riders#index"
  post '/riders', to: "riders#create"
  # SHOW RIDER
  get '/riders/:id', to: "riders#show"
  
end
