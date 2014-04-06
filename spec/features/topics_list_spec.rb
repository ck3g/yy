require 'spec_helper'

feature 'List of the topics', js: true do
  given!(:topic) { create :yy_topic, title: "Welcome to the Yackety-Yack" }

  scenario 'can view list of the topics' do
    visit yy_path
    expect(page).to have_content 'Welcome to the Yackety-Yack'
  end

  context 'when user is signed in' do
    given!(:user) { create :user_example_com }

    background do
      sign_in_as 'user@example.com', 'password'
    end

    scenario 'can view authorized control buttons' do
      visit yy_path
      within 'div.topic-actions' do
        expect(page).to have_selector 'a', text: 'Latest'
        expect(page).to have_selector 'a', text: 'New'
        expect(page).to have_selector 'a', text: 'Unread'
        expect(page).to have_selector 'a', text: 'Starred'
        expect(page).to have_selector 'a', text: 'Top'
        expect(page).to have_selector 'a', text: 'Categories'
        expect(page).to have_selector 'a', text: '+ Create Topic'
      end
    end
  end

  context 'when user is not signed in' do
    scenario 'cannot view authorized control buttons' do
      visit yy_path
      within 'div.topic-actions' do
        expect(page).to have_selector 'a', text: 'Latest'
        expect(page).not_to have_selector 'a', text: 'New'
        expect(page).not_to have_selector 'a', text: 'Unread'
        expect(page).not_to have_selector 'a', text: 'Starred'
        expect(page).to have_selector 'a', text: 'Top'
        expect(page).to have_selector 'a', text: 'Categories'
        expect(page).not_to have_selector 'a', text: '+ Create Topic'
      end
    end
  end
end
