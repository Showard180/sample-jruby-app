require 'sinatra/base'

class SampleServer < Sinatra::Base
  before do
    content_type :json
    headers 'Access-Control-Allow-Origin' => '*', 'Access-Control-Allow-Methods' => ['OPTIONS', 'GET', 'POST']
  end

  get '/ping' do
    'pong'
  end
end
