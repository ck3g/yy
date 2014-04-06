require 'spec_helper'

feature 'List of the topics' do
  given!(:topic) { create :yy_topic, title: "Welcome to the Yackety-Yack" }

  scenario 'can view list of the topics' do
    visit yy_path
    expect(page).to have_content 'List of the topics'
    expect(page).to have_content 'Welcome to the Yackety-Yack'
  end
end
