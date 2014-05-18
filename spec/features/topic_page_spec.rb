require 'spec_helper'

feature 'Topic page', js: true do
  given!(:topic) { create :yy_topic, title: "My first topic" }

  scenario 'can navigate to topic page from list' do
    visit yy_path

    within 'table.topic-list' do
      click_link 'My first topic'
    end

    within 'h1' do
      expect(page).to have_content 'My first topic'
    end
  end
end
