Rails.application.routes.draw do
  resources :survey_questions
  resources :order_items
  resources :orders do
    member do
      get 'close'
    end
  end
  resources :products
  resources :categories
  resources :personality_types
  devise_for :users
  root to: 'pages#home'
  get '/survey', to: 'pages#survey'
  get '/valente', to: 'personality_types#valente'
  get '/thankyou', to: 'orders#obrigado'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
