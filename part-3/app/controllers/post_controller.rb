get '/posts' do
  @posts = Post.all
  erb :"index"
end

get '/posts/new' do
  erb :"posts/new"
end

post '/posts' do
  @user = User.find(session[:id])
  @post = Post.new(params[:post])
  if @post.save
    @user.posts << @post
    erb :"posts/confirm"
  else
    erb :"posts/new"
  end
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :"posts/show"
end

put '/posts/:id' do
  @user = User.find(session[:id])
  @post = Post.find(params[:id])
  @post.update(params[:post])
  redirect "/users/#{@user.id}"
end

get '/posts/:id/edit' do
  @post = Post.find(params[:id])
  erb :"posts/edit"
end

delete '/posts/:id' do
  @post = Post.find(params[:id])
  @post.destroy
  redirect "/users/#{@post.user.id}"
end
