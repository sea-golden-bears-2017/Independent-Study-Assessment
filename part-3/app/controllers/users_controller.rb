get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  user = User.new(params[:user])
  user.password = params[:password]
  if user.save
    session[:user_id] = user.id
    @messages = ["Hello, #{user.username}!"]
    redirect '/'
  else
    @errors = user.errors.full_messages
    # p @errors
    erb :'/users/new'
  end
end

get 'users/show' do

end
