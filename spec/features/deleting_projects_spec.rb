require 'spec_helper'

feature "Deleting a Project" do
  scenario "Delete a Project" do
    FactoryGirl.create(:project, name: "TextMate 2")

    visit "/"
    click_link "TextMate 2"
    click_link "Delete Project"

    expect(page).to have_no_content("TextMate 2")
  end
end