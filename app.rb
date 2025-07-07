# require "sinatra"
# set :bind, "0.0.0.0"
# get "*" do
# "[v1] Hello, Kubernetes!\n"
# end




# require 'sinatra'

# set :port, 4567
# set :bind, '0.0.0.0'

# get '/' do
#   "Hello World!"
# end





require "sinatra"

set :bind, "0.0.0.0"
set :port, 80

get "/" do
  "[v1] Hello, Kubernetes!\n"
end
