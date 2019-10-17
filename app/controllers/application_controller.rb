require 'sinatra/base'

class App < Sinatra::Base
    configure do
    enable :sessions
      set :session_secret, "secret"
    end
    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      erb :'/super_hero'
      
    end
    post '/team' do 
        
      erb :'/team'
    end
end
