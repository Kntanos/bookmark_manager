require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://ntanos.co.uk")
      expect(bookmarks).to include("http://www.codewars.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
end