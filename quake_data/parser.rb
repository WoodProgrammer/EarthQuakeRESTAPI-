require 'rest-client'
require 'mysql2'

client=Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")

system("mkdir #{ ARGV[0]}")

for id in 1..80
    json_quake_data=RestClient.get "http://localhost:3000/api/locations/#{id}"
    file=open("#{ ARGV[0]}/#{id}.json","w")
    file.write(json_quake_data)
    file.close()
end
