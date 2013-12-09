require 'sinatra'
require 'sinatra/contrib'
require 'securerandom'
require 'json'

set :bind, '0.0.0.0'
set :port, 3000

class URandom
  attr_accessor :random_data 
  def initialize(size_in_bytes = 1024) 
    @random_data = SecureRandom.urlsafe_base64(size_in_bytes)
  end
  
  def json
  end

  def xml
  end
end

get '/', :provides => [:html, :json, :xml] do
  @random_instance = URandom.new
  respond_with :index 
end

not_found do
  404
end
