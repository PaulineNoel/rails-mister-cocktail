# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#   resources :cocktails, only: [:index, :new, :show, :create] do
#     resources :doses, only: [:new, :create, :destroy]
#   end
# end
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:create]
  end
  resources :doses, only: [:destroy]
end
