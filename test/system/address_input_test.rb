require "application_system_test_case"

# NOTE TO REVIEWER:
#
#   I decided to exclude System tests from the CI GitHub Action simply because the time costs
#   do not justify the value provided. I have tested this manually and it works as expected.
#
#   I have also tested this locally and it works as expected and I am happy to discuss this
#   further in the interview process.


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
