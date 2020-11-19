Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  # cockctail : index, show, new, create
  resources :cocktails, only: [:index, :show, :new, :create] do
    # doses : show, new, create, delete(non nested)
    resources :doses, only: [:new, :create]
    # ingrediends : show
    # resources :ingredients, only: [:show]
  end

  resources :doses, only: [:destroy]
end
