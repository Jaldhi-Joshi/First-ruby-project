Rails.application.routes.draw do
  devise_for :users
  resource :items do
end
  root 'items#index'

  get 'items/:id', :to => 'items#show', :as => 'item'

  get 'items/:id/edit', :to => 'items#edit', :as => 'edit/item'

  patch 'items/:id', :to => 'items#update'

  delete 'items/:id', :to => 'items#destroy'

  patch 'items/:id/complete', :to => 'items#complete', :as => 'complete'

end
