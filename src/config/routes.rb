# Project name: Assignment 2: TAG
# Description: This website will track donations and related information 
# to allow nonprofits to better streamline their process of reallocating
# donations to other distribution centers, who in turn give these 
# donations to the homeless or those who are unable to afford them.
# Filename: routes.rb
# Description: This file will add the user options to the dashboard/homepage
# Last modified on: 3/21/22

# frozen_string_literal: true

# This file tells the Rails server how incoming requests are sent to which
# controller and method.
#
#
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get 'dashboard/dash'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'dashboard/dash'
  get 'dashboard/view_data'
  get 'dashboard/search_data'
  get 'dashboard/add_data'
  get 'dashboard/delete_data'
  get 'home/index'

  # Devise authentification pages. This controlls the user login
  # and authentification system.
  devise_for :users

  # The root page, url, is sent here
  # root 'controller#method_in_controller'
  # root 'home#index'
  devise_scope :user do
    root 'devise/sessions#new'
  end
  
  # Examples:
  #
  # # Add app CRUD operations from a controller. Used with scaffolding.
  # # CRUD -> create (API/POST), new (page/GET), index, show,
  #           edit(page/GET), update(API/PATCH|PUT), destroy(API/DELETE)
  # resources :my_controller
  #
  # # Add GET path for photos controller, index method
  # get 'photos/index'
  #
  # # Resources, but only register these methods
  # resources :photos, only: [:index, :new, :create, :destroy]
  #
  # # Add PUT path for the given url, but send it to a different controller
  # # than rails would assume by the name. to: 'controller#method_name'.
  # # It would have extected to: 'add_tags#add', which would fail
  # put '/add_tags/add', to: 'users#add_tags'
end