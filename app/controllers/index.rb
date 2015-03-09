get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/categories/:id/posts' do
@category = Category.find(params[:id])
@posts = @category.posts
erb :show_category
end

get '/posts/:id' do
@post = Post.find(params[:id])
p @post
erb :get_post
end

get '/categories/:category_id/posts/new' do
@category = Category.find(params[:category_id])
erb :new_post
end

get '/posts/:id/edit' do
  @post = Post.find(params[:id])
  erb :edit_post
end

post '/update_post/:id' do
  puts params
  @post = Post.find(params[:id])
  @post.update_attributes(params[:post])

  redirect to("/posts/#{@post.id}")
end
