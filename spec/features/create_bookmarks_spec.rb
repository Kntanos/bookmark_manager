require 'pg'

feature 'Create bookmarks' do

  scenario 'a user can add bookmarks' do
    visit('/bookmarks/add')
    expect(page).to have_content "Add a new bookmark"
  end

  scenario 'a user can submit a new bookmark' do
    visit('/bookmarks/add')
    fill_in :new_url, with: "www.some.com"
    click_button 'Add'

    expect(page).to have_content "Add a new bookmark"
  end
end