get '/users/new' do
  erb :"/users/new"
end

post '/users' do
  @user = User.new(params[:user])
  p "*" * 100
  p @user
  if @user.save
    redirect '/sessions/new'
  else
    @error = "Error"
    erb :"/users/new"
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  @user_questions = @user.questions
  # Something goes here
  erb :"/users/show"
end
