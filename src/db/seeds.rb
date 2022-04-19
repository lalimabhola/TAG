# Project name: TAG (Track and Give)
# Description: This website will track donations and related information 
# to allow nonprofits to better streamline their process of reallocating
# donations to other distribution centers, who in turn give these
# donations to the homeless or those who are unable to afford them.
# Filename: seeds.rb
# Description: This file contains data in db
# Last modified on: 4/19/22

# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#s
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create the global configuration
# create! makes the object and automatically saves it to the database
# the ! means that if something goes wrong and cannot save, throw an exception
AppConfig.create!(name: 'TAG', logo_url: 'hhhhhhh')

if Rails.env.development?

  # We're in a development mode, so making fake, insecure data is fine
  # Create two user profiles, admin and unprivledged user
  # Right now, there is no difference between the accounts
  # If your project needs it, add a boolean field to user for administrator
  admin = User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  user = User.create!(email: 'user@example.com', password: 'password', password_confirmation: 'password')

elsif Rails.env.production?

  # We're in a production application! Stay secure! No accounts with password!

end