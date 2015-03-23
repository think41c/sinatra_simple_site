require 'sass'
require 'slim'
require 'sinatra'
require 'sinatra/fix_951'
require 'sinatra/reloader' if development? 
require './song'

# set :public, 'public'
# set :views, 'views'

get ('/styles.css'){ scss :styles }

get '/' do 
  @title = "home folder instance"
  slim :home
end

get '/about' do
  @title = "All about website (using instance)"
  slim :about
end

get '/contact' do
  slim :contact, :layout => :special
end

not_found do
 slim :not_found
end

get '/fake-error' do
 status 404
 "There’s nothing wrong, really :P"
end 

__END__

@@special 
<p> Showing you the special layout!! </p>