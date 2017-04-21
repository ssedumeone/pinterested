Rails.application.routes.draw do
  resources :pins
  devise_for :users
      devise_scope :user do  get '/users/sign_out' => 'devise/sessions#destroy' end
  root 'home#index'
  get  'home/about'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
