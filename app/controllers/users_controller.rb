get '/' do 
	erb :'layout'
end

# User is able to create an account (sign up)
get '/users/new' do
  erb :'/users/new'
end

post '/users/new' do
	"a user enters into their new account"
end

# post '/sessions' do 
	# erb :'sessions/new' #redirect user to login
# end

# User is able to view their own facebook profile
# User is able to view other users' profiles
# User is able to edit only their own profile