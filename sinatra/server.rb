require 'sinatra'
require 'json'
require 'rest-client'
get "/" do
  x=RestClient.get("http://localhost:3000/api/locations/12")
  t=JSON.parse( x)
  return t['sehir']
  ##API CEKIYOR
end
