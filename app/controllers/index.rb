

get '/' do
  @abuelita = params[:abuelita]
  # Look in app/views/index.erb
  erb :index
end

post '/abuelita' do
  @abuelita_input = params[:user_input]
  if @abuelita_input == @abuelita_input.upcase
    "Why are you yelling '" + @abuelita_input + "'?"
  elsif @abuelita_input == "bye"
    "bye honney"
  else
    "Speak up, kiddo!"
  end
  # redirect to("/?abuelita=#{@abuelita_input}")

  
end


