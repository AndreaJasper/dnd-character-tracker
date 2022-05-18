describe "User" do
  let(:user) { create :user }
  let(:user_attributes) { attributes_for :user }
  let(:user_attributes_invalid) { attributes_for :user, email: "example@example"}

  context "registration" do
    before do
      visit root_path
    end

    it "can sign up" do
      click_on "Sign Up"
      fill_sign_up user_attributes
      expect do
        click_on "Sign Up"
      end
      expect(page).to have_content "Sign Up"
    end

    it "displays an error when the email is invalid" do
      click_on "Sign Up"
      fill_sign_up user_attributes_invalid
      click_on "Sign Up"
      expect(page).to have_content "Email is invalid"
    end

    it "can log in" do
      expect(page).to have_content "DnD Character Tracker"
      click_on "Log In"

      sign_in user
    end

    sign_in :user do
      it "can log out" do
        sign_out
        expect(page).to have_link "Log In"
      end
    end
  end
end
