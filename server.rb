require 'sinatra'

# Page d'accueil avec un menu
get '/' do
  erb :index
end

# Tp 1  Isogramme
get '/isogramme' do
  erb :isogramme
end
# Tp 2: matrice (exemple)
get '/transpose' do
    erb :transpose
  end
