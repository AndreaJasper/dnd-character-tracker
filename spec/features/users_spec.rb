require "rails_helper"

describe "User" do
  let(:user) { create :user }

  scenario "can register" do
    visit new_user_registration_path
    expect(page).to have_content "Sign up"

    within '.new_user' do
      save_and_open_page

      fill_in :user_email, with: user.email
      fill_in :user_password, with: user.password

      click_on "Sign up"
    end

    expect(page).to have_content "Logout"
  end
end
