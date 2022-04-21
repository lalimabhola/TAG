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
    #     # @donations = Donation.accessible_by(current_ability)
    #     @donations = @donations.search(params[:first_name]) unless not params.has_key? :first_name
    # end

    # :first_name, :last_name, :email, :donation_item, :donation_type, :donation_quantity

    # def index
    #     @donations = Donation.where(nil) # creates an anonymous scope
    #     @donations = @donations.filter_by_first_name(params[:first_name]) if params[:first_name].present?
    # end
  
    def index
        @donations = Donation.search(params[:first_name])
    end

      # creating a new search
    def create
        respond_to do |format|
            format.html { render :index, query: params[:query] }
        end
    end 

    def donation_params
        params.require(:donation).permit(:first_name, :last_name, :email, :donation_item, :donation_type, :donation_quantity)
    end
end