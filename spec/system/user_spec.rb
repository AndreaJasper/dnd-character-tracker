require "rails_helper"

describe "User" do
  let(:user) { create :user }

  scenario "can register" do
    visit '/user/sign_up'
    expect(page).to have_content "Sign up"

    within '.email-register' do
      fill_in :email, with: user.email
      fill_in :password with: user.password
      click_on "Sign up"
    end

    expect(page).to have_content "The logged in show page"
  end
end
