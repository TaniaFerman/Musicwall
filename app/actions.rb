# Homepage (Root path)
# get '/' do
#   erb :index
# end

get '/' do
  erb :'list/first'
end

get '/list' do
  @lists = List.all
  erb :'list/index'
end

get '/list/new' do
  erb :'list/new'
end

get '/list/:id' do
  puts "hello"
  puts params
  puts "hi"
  @list = List.find params[:id]

  erb :'list/show'
end

post '/list' do
  @list = List.new(
    song:   params[:song],
    author:  params[:author],
    url: params[:url]
  )
  if @list.save
    redirect '/list'
  else 
    erb :'/list/new'
  end
end