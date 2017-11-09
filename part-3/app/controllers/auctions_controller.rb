get 'auctions' do
  @auctions = Auction.all
  erb :"/index"
end

get '/auctions/new' do

    erb :"/auctions/new"

end
