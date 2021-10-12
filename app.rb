require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all  
    erb :'bookmarks/index'
  end

  get '/bookmarks/add' do
    "Add a new bookmark"
    erb :'bookmarks/add'
  end

  post '/submit' do
    Bookmark.create(params[:new_url])
    redirect :'bookmarks/add'
  end

  run! if app_file == $0
end
