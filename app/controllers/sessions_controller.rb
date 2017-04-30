# User is able to log into an account (sign in)
post '/sessions' do
	# helper method for login
	user.login
	erb :'sessions/new' # redirect user to profile page
end

# User is able to enter into a new session
# should I even have this as a route? 
# Or should I simply redirect to show a users page?
get '/sessions/new' do
  erb :'sessions/new' 
end

# User is able to log out from an account (sign out)
delete '/sessions/:id' do
  @session = Session.find(params[:id])
  @session.destroy
  redirect '/sessions' # redirect back to sessions index page
end
