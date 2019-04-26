Rails.application.routes.draw do
  resource :items
  root 'items#index'

  get 'items/:id', to: 'items#show'

  get 'items/:id/edit', to: 'items#edit'
end
