post '/bids' do
  @errors = []
  @user = User.find(session[:user_id])
  @auction = Auction.find(params[:auction_id])
  bid = Bid.new(bid_amount: params[:bid_amount])
  if bid.save
    @user.bids << bid
    @auction.bids << bid
    redirect "/auctions/#{@auction.id}"
  else
    bid.errors.full_messages.each{|error| @errors << error}
    erb :'/bids/_new', locals: {errors: @errors}
  end
end
