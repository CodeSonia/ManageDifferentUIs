# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/homepage'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get '/homepage/:design_version', to: 'home#homepage', as: 'homepage'
  get '/version1', to: 'home#version1', as: 'version1'
  get '/version2', to: 'home#version2', as: 'version2'
end
