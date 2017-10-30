get '/sessions' do
  erb :"sessions/new"
end

post '/sessions' do
  if @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      session[:id] = @user.id
      redirect "/users/#{@user.id}"
    else
      redirect '/sessions'
    end
  else
    redirect '/sessions'
  end
end

delete '/sessions' do
  session.clear
  redirect '/'
end
