require "application_system_test_case"

class BarksTest < ApplicationSystemTestCase
  setup do
    @bark = barks(:one)
  end

  test "visiting the index" do
    visit barks_url
    assert_selector "h1", text: "Barks"
  end

  test "creating a Bark" do
    visit barks_url
    click_on "New Bark"

    fill_in "Bark", with: @bark.bark
    click_on "Create Bark"

    assert_text "Bark was successfully created"
    click_on "Back"
  end

  test "updating a Bark" do
    visit barks_url
    click_on "Edit", match: :first

    fill_in "Bark", with: @bark.bark
    click_on "Update Bark"

    assert_text "Bark was successfully updated"
    click_on "Back"
  end

  test "destroying a Bark" do
    visit barks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bark was successfully destroyed"
  end
end
