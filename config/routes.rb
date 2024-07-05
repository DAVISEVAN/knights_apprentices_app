Rails.application.routes.draw do
  get 'apprentices/index'
  get 'apprentices/new'
  get 'apprentices/show'
  get 'apprentices/edit'
  get 'knights/index'
  get 'knights/new'
  get 'knights/show'
  get 'knights/edit'
  get 'knights', to: 'knights#index', as: 'knights'
  get 'knights/new', to: 'knights#new', as: 'new_knight'
  post 'knights', to: 'knights#create'
  get 'knights/:id', to: 'knights#show', as: 'knight'
  get 'knights/:id/edit', to: 'knights#edit', as: 'edit_knight'
  patch 'knights/:id', to: 'knights#update'
  delete 'knights/:id', to: 'knights#destroy'

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
