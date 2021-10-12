require 'pg'

feature 'Delete bookmarks' do

  xscenario 'a user can delete bookmarks' do
    visit('/bookmarks/index')
    click_button 'Delete'
    expect(page).to not_have_content "www.some.com"
  end
end