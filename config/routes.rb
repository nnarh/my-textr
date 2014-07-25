require "monban/constraints/signed_in"

Rails.application.routes.draw do
  constraints Monban::Constraints::SignedIn.new do
        root "dashboards#show", as: :dashboard
  end

  root to: "homes#show"
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :messages, only: [:new, :create]
  post "/send_sms" => "twilio#send_sms"
end
