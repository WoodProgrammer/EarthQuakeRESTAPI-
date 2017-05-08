json.sehir @location.name
json.sehir_id @location.id

json.depremler @quake_datas do |quake|

    json.buyukluk quake.power
    json.time quake.time
    json.latitude quake.latitude
    json.longitude quake.longitude
    json.date quake.date

end
