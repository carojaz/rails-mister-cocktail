Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  # cockctail : index, show, new, create
  resources :cocktails, only: [:index, :show, :new, :create] do
    # doses : show, new, create, delete(non nested)
    resources :doses, only: [:new, :create]
    resource :reviews, only: [:index, :show, :new, :create]
  end

  resources :doses, only: [:destroy]
  resources :reviews, only: [:destroy]
end
