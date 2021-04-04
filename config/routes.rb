Rails.application.routes.draw do
  resources :stocks
  resources :tickets
  root to: "welcome#show"
#Obsluga kupna ticketu na event
  scope 'charge' do
        post 'create', to: 'charge#create', as: 'charge_create'
        get 'cancel', to: 'charge#cancel', as: 'charge_cancel'
        get 'success', to: 'charge#success', as: 'charge_success'
        end
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
