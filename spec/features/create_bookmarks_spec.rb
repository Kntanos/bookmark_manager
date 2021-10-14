require 'pg'

feature 'Create bookmarks' do

  scenario 'a user can add a new bookmark' do
    visit('/bookmarks')
    fill_in :url, with: "http://www.testURL.com"
    fill_in :title, with: "Test Title"
    click_button 'Add'

    expect(page).to have_link "Test Title", href: "http://www.testURL.com"
  end

  scenario 'The bookmark must be a valid URL' do
    visit('/bookmarks')
    fill_in('url', with: 'not a real bookmark')
    click_button('Add')
  
    expect(page).not_to have_content "not a real bookmark"
    expect(page).to have_content "You must submit a valid URL."
  end
end