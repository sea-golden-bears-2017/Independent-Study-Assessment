get 'auctions' do
  @auctions = Auction.all
  erb :"/index"
end

get '/auctions/new' do
  if session[:user_id]
    erb :"/auctions/new"
  else
    status 401
    erb :"/errors/401"
  end
end

post '/auctions' do
  @user = User.find(session[:user_id])
  @auction = Auction.new(params[:auction])
  @auction.user_id = session[:user_id]
  if @auction.save
    @user.auctions << @auction
    redirect :"/users/#{@user.id}"
  else
    erb :"auctions/new"
  end
end

get '/auctions/:id/edit' do
  if session[:user_id]
    @auction = Auction.find(params[:id])
    erb :"auctions/edit"
  else
    status 401
    erb :"/errors/401"
  end
end

put '/auctions/:id' do
  @user = User.find(session[:user_id])
  @auction = Auction.find(params[:id])
  @auction.update(params[:auction])
  redirect "/users/#{@user.id}"
end

delete '/auctions/:id' do
  @auction = Auction.find(params[:id])
  @auction.destroy
  redirect "/users/#{@auction.user.id}"
end
