require 'pg'

feature 'Create bookmarks' do

  scenario 'a user can add a new bookmark' do
    visit('/bookmarks')
    fill_in :url, with: "http://www.testURL.com"
    fill_in :title, with: "Test Title"
    click_button 'Add'

    expect(page).to have_link "Test Title", href: "http://www.testURL.com"
  end
end