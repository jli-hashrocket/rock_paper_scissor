require 'spec_helper'

feature 'User picks sign', %q{
User Story:
As a user
I want to pick a sign
So I can see if I won or lost the game
} do
  # Acceptance Criteria
  # *I must select a sign and submit the form

  scenario 'picks a sign' do
    rock = FactoryGirl.create(:sign, name: "rock")
    paper = FactoryGirl.create(:sign, name: "paper")
    scissor = FactoryGirl.create(:sign, name: "scissor")

    visit root_path

    select "rock", from: "Pick a sign"
    click_on "Submit"

    expect(page).to have_content("New Game")
  end

end
