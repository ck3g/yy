require 'spec_helper'

feature 'Create a new Topic', js: true do
  given!(:user) { create :user_example_com }

  scenario "Can view new topic form" do
    sign_in_as 'user@example.com', 'password'
    visit yy_path

    click_create_new_topic_link

    within '#create-topic-control' do
      expect(page).to have_content 'Create a new Topic'
      expect(page).to have_selector 'button', text: 'Create Topic'
    end
  end

  scenario "Can cancel new topic form" do
    sign_in_as 'user@example.com', 'password'
    visit yy_path

    click_create_new_topic_link

    within '#create-topic-control' do
      click_button 'x'
    end

    expect(page).not_to have_selector '#create-topic-control'
  end
end

def click_create_new_topic_link
  within "div.topic-actions" do
    click_link '+ Create Topic'
  end
end
