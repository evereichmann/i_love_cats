Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/cats', to: 'cats#index', as: 'cats'
  get '/cats/new', to: 'cats#new', as: 'new'
  get '/cats/:id', to: 'cats#show', as: 'cat'
  get '/cats/:id/edit', to: 'cats#edit', as: 'edit_cat'

  post '/cats', to: 'cats#create'
  patch '/cats/:id', to: 'cats#update'
  delete '/cats/:id', to: 'cats#destroy'

end
