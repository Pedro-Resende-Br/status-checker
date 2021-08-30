Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :messages
  resources :servers, only: [:index, :new, :create]
  resources :infos, only: [:index, :new, :create, :edit, :update]
  get 'edit', to: 'messages#edit_information', as: :information
end
