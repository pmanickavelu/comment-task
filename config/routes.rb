Rails.application.routes.draw do
  root 'user_comments#index'

  resources :user_comments, only: [:index, :create] do
    get :list, on: :collection
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
