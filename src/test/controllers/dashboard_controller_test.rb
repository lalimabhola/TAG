# Project name: Assignment 2: TAG
# Description: This website will track donations and related information 
# to allow nonprofits to better streamline their process of reallocating
# donations to other distribution centers, who in turn give these 
# donations to the homeless or those who are unable to afford them.
# Filename: dashboard_constroller_test.rb
# Description: This file will add the dashboard to the site
# Last modified on: 3/21/22

require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get dash" do
    get dashboard_dash_url
    assert_response :success
  end
end