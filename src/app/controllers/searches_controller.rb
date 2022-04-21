# Project name: TAG (Track and Give)
# Description: This website will track donations and related information 
# to allow nonprofits to better streamline their process of reallocating
# donations to other distribution centers, who in turn give these
# donations to the homeless or those who are unable to afford them.
# Filename: searches_controller.rb
# Description: This file manages the options on the navigation bar
# Last modified on: 4/21/22

class SearchesController < ApplicationController
    
    # listing all worklogs
    def index

        ## @worklogs = Worklog.search(params[:q])
        ## @worklogs = Worklog.all
        
        @donations = Donation.search(params[:donation_item])
  
        # @worklogs = Worklog.where(user_id: current_user.id)
        # render "index"
  
        # @worklogs = Worklog.all
        # render :index
  
    end
  
  
    def new
        @donation = Donation.new
        render :new
    end
  
    # creating a new search
    def create
        @donation = Donation.new(worklog_params)
        if @donation.save
            redirect_to searches_path
        else
        render :new
        end
    end
  
    # showing the search
    def show 
      
    end
  
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation
        @donation = Donation.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def donation_params
        params.require(:donation).permit(:first_name, :last_name, :email, :donation_item, :donation_type, :donation_quantity, :search)
    end
end