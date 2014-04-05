require 'spec_helper'

feature 'List of the topics' do
  scenario 'can view list of the topics' do
    visit yy_path
    expect(page).to have_content 'List of the topics'
  end
end
