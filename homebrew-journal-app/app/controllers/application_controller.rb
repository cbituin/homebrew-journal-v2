require './config/environment'
require 'rack-flash'

# To display this message in the view, just add
#<!-- views/file.erb -->
# <% if flash.has?(:message) %>
#   <%= flash[:message] %>
# <% end %>

class ApplicationController < Sinatra::Base
  enable :sessions
  use Rack::Flash

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

end
