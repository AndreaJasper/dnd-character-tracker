require "rails_helper"

describe "User" do
  let(:user) { create :user }

  scenario "can register" do
    visit new_user_registration_path
    expect(page).to have_content "Sign up"

    within '.new_user' do
      fill_in :user_email, with: user.email
      fill_in :user_password, with: user.password

      click_on "Sign up"
    end

    expect(page).to have_content "Logout"
  end

  scenario "can sign in" do
    visit new_user_session_path
    expect(page).to have_content "Log in"

    within ".new_user" do
      fill_in :user_email, with: user.email
      fill_in :user_password, with: user.password

      click_on "Log in"
    end

    expect(page).to have_content "Logout"
  end

  scenario "can sign out" do
    click_button "Logout"
    expect(page).to have_content "Log in"
  end
end
