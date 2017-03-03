Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  scope :api, module: 'api' do
    resources :subscriptions, only: [:create, :destroy]
  end

  resources :questions
  resources :answers, only: :create

  root to: 'home#index'
end
