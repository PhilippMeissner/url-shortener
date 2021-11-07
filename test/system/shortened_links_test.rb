require "application_system_test_case"

class ShortenedLinksTest < ApplicationSystemTestCase
  setup do
    @shortened_link = shortened_links(:one)
  end

  test "visiting the index" do
    visit shortened_links_url
    assert_selector "h1", text: "Shortened Links"
  end

  test "creating a Shortened link" do
    visit shortened_links_url
    click_on "New Shortened Link"

    fill_in "Code", with: @shortened_link.code
    fill_in "Original url", with: @shortened_link.original_url
    click_on "Create Shortened link"

    assert_text "Shortened link was successfully created"
    click_on "Back"
  end

  test "updating a Shortened link" do
    visit shortened_links_url
    click_on "Edit", match: :first

    fill_in "Code", with: @shortened_link.code
    fill_in "Original url", with: @shortened_link.original_url
    click_on "Update Shortened link"

    assert_text "Shortened link was successfully updated"
    click_on "Back"
  end

  test "destroying a Shortened link" do
    visit shortened_links_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shortened link was successfully destroyed"
  end
end
