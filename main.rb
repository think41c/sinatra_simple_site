require 'sinatra'
require 'sinatra/reloader' if development? 

# set :public, 'public'
# set :views, 'views'

get '/' do 
  @title = "home folder instance"
  erb :home
end

get '/about' do
  @title = "All about website (using instance)"
  erb :about
end

get '/contact' do
  erb :contact, :layout => :special
end

not_found do
 erb :not_found
end

get '/fake-error' do
 status 404
 "There’s nothing wrong, really :P"
end 

# __END__

# @@special 
# <p> Showing you the special layout!! </p>