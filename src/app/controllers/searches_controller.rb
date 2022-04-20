# Project name: TAG (Track and Give)
# Description: This website will track donations and related information 
# to allow nonprofits to better streamline their process of reallocating
# donations to other distribution centers, who in turn give these
# donations to the homeless or those who are unable to afford them.
# Filename: searches_controller.rb
# Description: This file manages the options on the navigation bar
# Last modified on: 4/20/22

class SearchesController < ApplicationController

    # listing possible search parameters
    # def index
    #   @worklogs = Worklog.accessible_by(current_ability)
    #   @worklogs = @worklogs.search(params[:query]) unless not params.has_key? :query
    #   @worklogs = Kaminari.paginate_array(@worklogs).page params[:page]
    # end

    # # creating a new search
    # def create
    #   respond_to do |format|
    #     format.html { render :index, query: params[:query] }
    #   end
    # end
end 