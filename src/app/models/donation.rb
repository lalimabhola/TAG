# Project name: TAG (Track and Give)
# Description: This website will track donations and related information 
# to allow nonprofits to better streamline their process of reallocating
# donations to other distribution centers, who in turn give these
# donations to the homeless or those who are unable to afford them.
# Filename: donation.rb
# Description: This file manages the search on donations
# Last modified on: 5/12/22

class Donation < ApplicationRecord
    class << self   # shorthand way of writing two methods
        def search(query)       # performs a case-sensitive search
            rel = order("id")
            if query.present?       # if the query is present then show display on screen
              rel = rel.where("donation_item LIKE?", "%#{query}%")      # search query is donation item
            end
            rel
        end
    end

    #download donations as a csv file
    def self.to_csv
        attributes = %w{FirstName LastName Email Donation TypeofItem Quantity}
        CSV.generate(headers: true) do |csv|
        csv << attributes
            all.each do |donation|
                csv << [donation.first_name, donation.last_name, donation.email, donation.donation_item, donation.donation_type, donation.donation_quantity]
            end
        end
    end


end  