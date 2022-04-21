# Project name: TAG (Track and Give)
# Description: This website will track donations and related information 
# to allow nonprofits to better streamline their process of reallocating
# donations to other distribution centers, who in turn give these
# donations to the homeless or those who are unable to afford them.
# Filename: donation.rb
# Description: This file manages the search on donations
# Last modified on: 4/21/22

class Donation < ApplicationRecord
  
    class << self
        def search(query)
            rel = order("id")
            if query.present?
              rel = rel.where("donation_item LIKE?", "%#{query}%")
            end
            rel
        end
    end
end  