# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/homepage'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  scope '/version-one', as: 'version_one' do
    get '', to: 'home#version_one', as: 'index'
    get 'page-one', to: 'home#version_one_page_one', as: 'page_one'
    get 'page-two', to: 'home#version_one_page_two', as: 'page_two'
    get 'page-three', to: 'home#version_one_page_three', as: 'page_three'
  end

  scope '/version-two', as: 'version_two' do
    get '', to: 'home#version_two', as: 'index'
    get 'page-one', to: 'home#version_two_page_one', as: 'page_one'
    get 'page-two', to: 'home#version_two_page_two', as: 'page_two'
    get 'page-three', to: 'home#version_two_page_three', as: 'page_three'
  end
end
