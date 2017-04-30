# User is able to add other users as friends
post '/users/:user_id/friends' do 
  @user = User.find(params[:user_id])
  @friend = User.all.find_by(params[:friend]) # params[:friend] => Name, hometown, current city, highschool, university, employeer, graduate school
  if @friend
    redirect "/users/#{@user.id}/friends" # ajax
  else
    erb :'friends/new' # show errors 'No results found.'
  end
end

# User can see a list of their facebook friends (friends side bar)
get '/users/:user_id/friends' do 
  @user = User.find(params[:user_id])
  @friends = @user.friends # throw this in the erb file or in a helper method.
  erb :'friends/index'
end

# User can see how many facebook friends your friend has
# shown under the users icon not a route