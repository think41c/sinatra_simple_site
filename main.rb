require 'sinatra'
require 'sinatra/reloader'

get '/' do 
  erb :home
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end


__END__
@@layout
<!doctype html>
<% foo = "baz" %> 
<% title="Songs By Sinatra" %>
<html lang="en">
<head>
  <title><%= title %></title>
 <meta charset="utf-8">
</head>
<body>
 <header>
 <h1><%= title %></h1>
 <h2><%= foo   %></h2>
 <nav>
 <ul>
 <li><a href="/" title="Home">Home</a></li>
 <li><a href="/about" title="About">About</a></li>
 <li><a href="/contact" title="Contact">Contact</a></li>
 </ul>
 </nav>
 </header>
 <section>
 <%= yield %>
 </section>
</body>
</html>

@@home
<p> Welcome to sinatra. This isn't part of the layout. </p>

@@about 
<p> About sinatra </p>

@@contact 
<p> Sent an email </p>