# User is able to (C) CREATE a LIKE on a friend's status
post '/friends/:friend_id/likes' do 
  @friend = Friend.find(params[:friend_id]) # which friend
  @like = @friend.likes.new(params[:like]) # generate like for this friend (params should include article id)
  if @like.save
    redirect "/friends/#{@friend.id}/likes" # ajax
  else
    erb :'likes/new' # show errors
  end
end

# User is able to (R) VIEW how many LIKES on a friend's status
get '/friends/:friend_id/likes' do 
  @friend = Friend.find(params[:friend_id])
  @likes = @friend.likes
  erb :'likes/index' # ajax
end


# User is able to UN-LIKE their friend's statuses if user changed his/her mind
	# Do we want to implement this?