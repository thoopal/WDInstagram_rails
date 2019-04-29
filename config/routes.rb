Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'instas#index'
  get '/instas/new' => 'instas#new', as: 'new_insta'
  post '/instas' => 'instas#create'
  get '/instas/:id' => 'instas#show' , as: 'insta'
  get '/instas/:id/edit' => 'instas#edit', as: 'edit_insta'
  patch '/instas/:id' => 'instas#update'
  delete '/articles/:id' => 'articles#destroy'
end
