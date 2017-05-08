json.quakes @quakes do |quake|
  json.id quake.id
  json.city_id quake.city_id
  json.power quake.power
  json.time quake.time
  json.date quake.date
end
