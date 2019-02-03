require "application_system_test_case"

class VotesTest < ApplicationSystemTestCase
  setup do
    @vote = votes(:one)
  end

  test "visiting the index" do
    visit votes_url
    assert_selector "h1", text: "Votes"
  end

  test "creating a Vote" do
    visit votes_url
    click_on "New Vote"

    fill_in "Choice0", with: @vote.choice0
    fill_in "Choice1", with: @vote.choice1
    fill_in "Choice2", with: @vote.choice2
    fill_in "Choice3", with: @vote.choice3
    fill_in "Choice4", with: @vote.choice4
    fill_in "Choice5", with: @vote.choice5
    fill_in "Choice6", with: @vote.choice6
    fill_in "Choice7", with: @vote.choice7
    fill_in "Choice8", with: @vote.choice8
    fill_in "Election", with: @vote.election_id
    fill_in "Slug", with: @vote.slug
    click_on "Create Vote"

    assert_text "Vote was successfully created"
    click_on "Back"
  end

  test "updating a Vote" do
    visit votes_url
    click_on "Edit", match: :first

    fill_in "Choice0", with: @vote.choice0
    fill_in "Choice1", with: @vote.choice1
    fill_in "Choice2", with: @vote.choice2
    fill_in "Choice3", with: @vote.choice3
    fill_in "Choice4", with: @vote.choice4
    fill_in "Choice5", with: @vote.choice5
    fill_in "Choice6", with: @vote.choice6
    fill_in "Choice7", with: @vote.choice7
    fill_in "Choice8", with: @vote.choice8
    fill_in "Election", with: @vote.election_id
    fill_in "Slug", with: @vote.slug
    click_on "Update Vote"

    assert_text "Vote was successfully updated"
    click_on "Back"
  end

  test "destroying a Vote" do
    visit votes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vote was successfully destroyed"
  end
end
