get '/' do 
	redirect '/users/new'
end

# User is able to create an account (sign up)
get '/users/new' do
  erb :'/users/new'
end 

post '/users' do
  @user = User.new(params[:user]) # create new user
  if @user.save
    redirect '/users/:id'
  else
    # show errors
    erb :'users/new' 
  end
end

# User is able to view their own facebook profile
get '/users/:id' do
  @user = User.find(params[:id]) #define instance variable for view
  erb :'users/show' #show single user view
end

# User is able to edit only their own profile
get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end

put '/users/:id' do
  @user = User.find(params[:id])
  @user.assign_attributes(params[:user])
  if @user.save
    redirect '/users'
  else
  	# show edit user view again(potentially displaying errors)
    erb :'users/edit' 
  end
end

# User is able to view other users' profiles
get '/users/:user_id/friends/:id' do 
  @user = User.find(params[:user_id])
  @friend = @user.friends.find(params[:id])
  erb :'friends/show'
end
