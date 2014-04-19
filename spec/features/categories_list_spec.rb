require 'spec_helper'

feature 'Categories list', js: true do
  given!(:category) {
    create :yy_category,
      name: 'Mother Goose Club',
      description: "Nursery Rhymes. Songs. etc." }

  scenario 'can view list of categories' do
    visit yy_path

    within 'div.topic-actions' do
      click_link 'Categories'
    end

    expect(page).to have_content 'Mother Goose Club'
    expect(page).to have_content 'Nursery Rhymes. Songs. etc.'
  end
end
