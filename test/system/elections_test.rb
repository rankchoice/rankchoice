require "application_system_test_case"

class ElectionsTest < ApplicationSystemTestCase
  setup do
    @election = elections(:one)
  end

  test "visiting the index" do
    visit elections_url
    assert_selector "h1", text: "Elections"
  end

  test "creating a Election" do
    visit elections_url
    click_on "New Election"

    fill_in "Candidate0", with: @election.candidate0
    fill_in "Candidate1", with: @election.candidate1
    fill_in "Candidate2", with: @election.candidate2
    fill_in "Candidate3", with: @election.candidate3
    fill_in "Candidate4", with: @election.candidate4
    fill_in "Candidate5", with: @election.candidate5
    fill_in "Candidate6", with: @election.candidate6
    fill_in "Candidate7", with: @election.candidate7
    fill_in "Candidate8", with: @election.candidate8
    fill_in "Description", with: @election.description
    fill_in "Result", with: @election.result
    fill_in "Slug", with: @election.slug
    fill_in "Title", with: @election.title
    click_on "Create Election"

    assert_text "Election was successfully created"
    click_on "Back"
  end

  test "updating a Election" do
    visit elections_url
    click_on "Edit", match: :first

    fill_in "Candidate0", with: @election.candidate0
    fill_in "Candidate1", with: @election.candidate1
    fill_in "Candidate2", with: @election.candidate2
    fill_in "Candidate3", with: @election.candidate3
    fill_in "Candidate4", with: @election.candidate4
    fill_in "Candidate5", with: @election.candidate5
    fill_in "Candidate6", with: @election.candidate6
    fill_in "Candidate7", with: @election.candidate7
    fill_in "Candidate8", with: @election.candidate8
    fill_in "Description", with: @election.description
    fill_in "Result", with: @election.result
    fill_in "Slug", with: @election.slug
    fill_in "Title", with: @election.title
    click_on "Update Election"

    assert_text "Election was successfully updated"
    click_on "Back"
  end

  test "destroying a Election" do
    visit elections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Election was successfully destroyed"
  end
end
