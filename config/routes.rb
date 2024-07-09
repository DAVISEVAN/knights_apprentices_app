Rails.application.routes.draw do


  get '/knights/:knight_id/apprentices', to: 'apprentices#index_for_knight', as: 'knight_apprentices'

  get 'apprentices', to: 'apprentices#index', as: 'apprentices'
  get 'apprentices/new', to: 'apprentices#new', as: 'new_apprentice'
  post 'apprentices', to: 'apprentices#create'
  get 'apprentices/:id', to: 'apprentices#show', as: 'apprentice'
  get 'apprentices/:id/edit', to: 'apprentices#edit', as: 'edit_apprentice'
  patch 'apprentices/:id', to: 'apprentices#update'
  delete 'apprentices/:id', to: 'apprentices#destroy'

  # Define root 
  root 'knights#index'
end
