get '/posts' do
  @posts = Post.all
  erb :"index"
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :"posts/show"
end
