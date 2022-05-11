class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :donation_item
      t.string :donation_type
      t.integer :donation_quantity

      t.timestamps
    end
  end
end
