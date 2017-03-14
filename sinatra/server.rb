require 'sinatra'
require 'json'
require 'rest-client'
get "/" do
  x=RestClient.get("http://localhost:3001/quakes/15")
  t=JSON.parse( x)
  return t['sehir']
  ##API CEKIYOR
end
