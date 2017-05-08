# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'mysql2'
puts "HALLO"
client = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")
Recording.destroy_all

quake_data=client.query("SELECT * FROM quakes")

quake_data.each do |qdata|
  Recording.create(location_id: "#{qdata['city_id']}",power:"#{qdata['siddet']}",main_q_id:"#{qdata['id']}",time:"#{qdata['date']}")
end
puts "HALLO2"
