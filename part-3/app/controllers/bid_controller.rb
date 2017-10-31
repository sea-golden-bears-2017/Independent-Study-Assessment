post "/bids" do
  if #users hasn't bid on auction yet
    @bid = Bid.new(params[:bid])
    #associate with a user and auction
    if @bid.save
      #redirect
    else
      #redirect
    end
  else
    #error
  end
end
