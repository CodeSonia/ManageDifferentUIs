# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'home/homepage'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # scope '/version-one', as: 'version_one' do
  #   get '', to: 'version_one#version_one', as: 'index'
  #   get 'page-one', to: 'version_one#version_one_page_one', as: 'page_one'
  #   get 'page-two', to: 'version_one#version_one_page_two', as: 'page_two'
  #   get 'page-three', to: 'version_one#version_one_page_three', as: 'page_three'
  # end

  # scope '/version-two', as: 'version_two' do
  #   get '', to: 'version_two#version_two', as: 'index'
  #   get 'page-one', to: 'version_two#version_two_page_one', as: 'page_one'
  #   get 'page-two', to: 'version_two#version_two_page_two', as: 'page_two'
  #   get 'page-three', to: 'version_two#version_two_page_three', as: 'page_three'
  # end

  # root to: 'home#root'

  # get "/:ui_version(/:action)", controller: 'home', action: 'page_one', constraints: { ui_version: /version-one|version-two/ }, defaults: { ui_version: ENV['UI_VERSION'] || 'version-one' } do
  #   get 'page-one', action: 'page_one'
  #   get 'page-two', action: 'page_two'
  #   get 'page-three', action: 'page_three'
  # end

  # root to: 'home#root'

  # get '/:ui_version/page_one', to: 'home#page_one'
  # get '/:ui_version/page_two', to: 'home#page_two'
  # get '/:ui_version/page_three', to: 'home#page_three'

  # root to: 'home#root'

  # get '/version-one/page_one', to: 'version_one#page_one'
  # get '/version-one/page_two', to: 'version_one#page_two'
  # get '/version-one/page_three', to: 'version_one#page_three'

  # get '/version-two/page_one', to: 'version_two#page_one'
  # get '/version-two/page_two', to: 'version_two#page_two'
  # get '/version-two/page_three', to: 'version_two#page_three'

  UI_VERSION_CONSTRAINT = /(version-one|version-two)/

  scope lambda { |request| { ui_version: request.env['UI_VERSION'] || 'version-one' } }, constraints: { ui_version: UI_VERSION_CONSTRAINT } do
    root to: 'home#root'
    get '/page_one', to: 'home#page_one'
    get '/page_two', to: 'home#page_two'
    get '/page_three', to: 'home#page_three'
  end

end
