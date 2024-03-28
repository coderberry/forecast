require "application_system_test_case"

class AddressInputTest < ApplicationSystemTestCase
  test "submit an address within the form and verify the `address` query param equals the address entered" do
    visit root_path
    assert_current_path root_path

    fill_in "address", with: "123 Main St"
    click_button "Submit"

    assert_current_path root_path(address: "123 Main St")
    assert_field "address", with: "123 Main St"
  end
end
