# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/homepage'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get '/homepage/:design_version', to: 'home#homepage', as: 'homepage'
  # get '/version-one', to: 'home#version_one', as: 'version-one'
  # get '/version-two', to: 'home#version_two', as: 'version-two'

  get '/version-one', to: 'home#version_one', as: 'version-one'
  get '/version-one/page-one', to: 'home#version_one_page_one', as: 'version-one-page-one'
  get '/version-one/page-two', to: 'home#version_one_page_two', as: 'version-one-page-two'
  get '/version-one/page-three', to: 'home#version_one_page_three', as: 'version-one-page-three'

  get '/version-two', to: 'home#version_two', as: 'version-two'
  get '/version-two/page-one', to: 'home#version_two_page_one', as: 'version-two-page-one'
  get '/version-two/page-two', to: 'home#version_two_page_two', as: 'version-two-page-two'
  get '/version-two/page-three', to: 'home#version_two_page_three', as: 'version-two-page-three'
end
