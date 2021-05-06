# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get '/', to: 'main#index'
  get 'catalog', to: 'product#index'
  resources :product, only: :show
end
