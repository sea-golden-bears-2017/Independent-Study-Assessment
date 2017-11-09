get 'auctions' do
  @auctions = Auction.all
  erb :"/index"
end

get '/auctions/new' do
    erb :"/auctions/new"
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
  @auction = Auction.find(params[:id])
  erb :"auctions/edit"
end

put '/auctions/:id' do
  @user = User.find(session[:user_id])
  @auction = Auction.find(params[:id])
  @auction.update(params[:auction])
  redirect "/users/#{@user.id}"
end
