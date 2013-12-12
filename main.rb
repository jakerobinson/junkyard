require 'sinatra'
require 'sinatra/contrib'
require 'securerandom'
require 'json'
require 'nokogiri'
require 'haml'

set :bind, '0.0.0.0'
set :port, 3000

class URandom
  attr_accessor :random_data 
  def initialize(size_in_bytes = 1024) 
    @random_data = SecureRandom.urlsafe_base64(size_in_bytes)
  end
  
  def json
    { :random_data => @random_data }.to_json
  end

  def xml
    builder =  Nokogiri::XML::Builder.new do |xml|
      xml.random_data @random_data
    end
    builder.to_xml
  end
end

get '/', :provides => [:html, :json, :xml] do
  @random_instance = URandom.new
  respond_with :index do |f|
    f.json { @random_instance.json }
    f.xml { @random_instance.xml }
  end
end

not_found do
  404
end
