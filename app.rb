require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all  
    erb :'bookmarks/index'
  end

  post '/bookmarks' do
    Bookmark.create(params[:new_url])
    redirect :'bookmarks'
  end

  delete '/bookmarks' do
    #Bookmark.delete(something)
    redirect :'bookmarks'
  end

  run! if app_file == $0
end
