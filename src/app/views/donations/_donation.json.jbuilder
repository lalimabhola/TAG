json.extract! donation, :id, :first_name, :last_name, :email, :donation_item, :donation_type, :donation_quantity, :created_at, :updated_at
json.url donation_url(donation, format: :json)
