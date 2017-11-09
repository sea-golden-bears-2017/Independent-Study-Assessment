post '/bids' do
  @user = User.find(session[:user_id])
  @auction = Auction.find(params[:auction_id])
  bid = Bid.new(bid_amount: params[:bid_amount])
  if bid.save
    @user.bids << bid
    @auction.bids << bid
    redirect "/auctions/#{@auction.id}"
  else
    @errors = bid.errors.full_messages
    erb :'/bids/_new', locals: {errors: @errors}
  end
end
