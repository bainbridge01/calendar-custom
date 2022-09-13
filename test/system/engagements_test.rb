require "application_system_test_case"

class EngagementsTest < ApplicationSystemTestCase
  setup do
    @engagement = engagements(:one)
  end

  test "visiting the index" do
    visit engagements_url
    assert_selector "h1", text: "Engagements"
  end

  test "should create engagement" do
    visit engagements_url
    click_on "New engagement"

    fill_in "Description", with: @engagement.description
    fill_in "End time", with: @engagement.end_time
    fill_in "Start time", with: @engagement.start_time
    fill_in "Title", with: @engagement.title
    click_on "Create Engagement"

    assert_text "Engagement was successfully created"
    click_on "Back"
  end

  test "should update Engagement" do
    visit engagement_url(@engagement)
    click_on "Edit this engagement", match: :first

    fill_in "Description", with: @engagement.description
    fill_in "End time", with: @engagement.end_time
    fill_in "Start time", with: @engagement.start_time
    fill_in "Title", with: @engagement.title
    click_on "Update Engagement"

    assert_text "Engagement was successfully updated"
    click_on "Back"
  end

  test "should destroy Engagement" do
    visit engagement_url(@engagement)
    click_on "Destroy this engagement", match: :first

    assert_text "Engagement was successfully destroyed"
  end
end
