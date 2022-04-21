class Donation < ApplicationRecord
    belongs_to :donation

    def self.search(search)
        if search
            donation = Donation.find_by(first_name: search)
            if donation
                self.where(donation_item: donation)
            else
                Donation.all
            end
        else
            Donation.all
        end
    end
    
end
