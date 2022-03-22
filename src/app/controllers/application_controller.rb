# Project name: Assignment 2: TAG
# Description: This website will track donations and related information 
# to allow nonprofits to better streamline their process of reallocating
# donations to other distribution centers, who in turn give these 
# donations to the homeless or those who are unable to afford them.
# Filename: application_controller.rb
# Description: This file will add the path for the dashboard after the logging in
# Last modified on: 3/22/22

# frozen_string_literal: true

# This is the main controller for the entire project
# Every other controller will inherit from this one
# If there is a behavior or method you want for all controllers,
# it goes here. If that method is a helper, don't add it here,
# but in the helpers folder. They will be available in their
# respected views.
class ApplicationController < ActionController::Base
  # If someone tried to pretend to be someone else, an error occurs for them
  protect_from_forgery with: :exception
  # See if the current user is logged in
  before_action :authenticate_user!

  def after_sign_in_path_for(user)
    # your path goes here
    dashboard_dash_path(user)
  end

end
