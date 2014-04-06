require 'spec_helper'

feature 'Authentication' do
  scenario 'can sign in with valid credentials' do
    create :user_example_com

    visit yy_path
    within 'nav.navbar' do
      click_link "Login"
    end

    expect(current_path).to eq new_user_session_path

    sign_in_as 'user@example.com', 'password'

    expect(page).to have_content "Signed in successfully"
  end

  scenario 'can sign out from Yackety-Yack' do
    create :user_example_com

    sign_in_as 'user@example.com', 'password'

    visit yy_path
    within 'nav.navbar' do
      click_link 'Logout'
    end

    expect(page).to have_content "Signed out successfully"
  end
end
