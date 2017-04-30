# User is able to (C) CREATE status (140 char max)
get '/users/:user_id/statuses/new' do 
  @user = User.find(params[:user_id])
  erb :'statuses/new' # Ajax
end

# User is able to (R) VIEW * statuses * of a followed facebook friend (friend profile page)
  # User is able to (R) view all statuses by any followed facebook friend
    # find the current user based on the session id
    # find the friend based on the status id
    # reroute to the friends profile page -- think about authorizations

# User is able to (U) UPDATE only their own statuses
put '/users/:user_id/statuses/:id' do
  @user = User.find(params[:user_id])
  @status = @user.statuses.find(params[:id])
  if @status.update_attributes(params[:status])
    redirect "/users/#{@user.id}/statuses" # Ajax
  else 
  	# show errors
    erb :'statuses/edit' 
  end
end

# User is able to (D) DELETE only their own statuses
delete '/users/:user_id/statuses/:id' do 
  @user = User.find(params[:user_id])
  @status = @user.statuses.find(params[:id])
  @status.destroy
  redirect "/users/#{@user.id}/statuses" # Ajax
end
