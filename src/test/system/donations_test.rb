require "application_system_test_case"

class DonationsTest < ApplicationSystemTestCase
  setup do
    @donation = donations(:one)
  end

  test "visiting the index" do
    visit donations_url
    assert_selector "h1", text: "Donations"
  end

  test "creating a Donation" do
    visit donations_url
    click_on "New Donation"

    fill_in "Donation item", with: @donation.donation_item
    fill_in "Donation quantity", with: @donation.donation_quantity
    fill_in "Donation type", with: @donation.donation_type
    fill_in "Email", with: @donation.email
    fill_in "First name", with: @donation.first_name
    fill_in "Last name", with: @donation.last_name
    click_on "Create Donation"

    assert_text "Donation was successfully created"
    click_on "Back"
  end

  test "updating a Donation" do
    visit donations_url
    click_on "Edit", match: :first

    fill_in "Donation item", with: @donation.donation_item
    fill_in "Donation quantity", with: @donation.donation_quantity
    fill_in "Donation type", with: @donation.donation_type
    fill_in "Email", with: @donation.email
    fill_in "First name", with: @donation.first_name
    fill_in "Last name", with: @donation.last_name
    click_on "Update Donation"

    assert_text "Donation was successfully updated"
    click_on "Back"
  end

  test "destroying a Donation" do
    visit donations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Donation was successfully destroyed"
  end
end
