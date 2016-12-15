

get '/' do
  @abuelita = params[:abuelita]
  # Look in app/views/index.erb
  erb :index
end

post '/abuelita' do
  @abuelita = params[:user_input]
  if @abuelita == @abuelita.upcase
    @abuelita = "Why are you yelling '" + @abuelita + "'?"
  elsif @abuelita == "bye"
    @abuelita = "bye honney"
  else
    @abuelita = "Speak up, kiddo!"
  
end
  erb :index
end
