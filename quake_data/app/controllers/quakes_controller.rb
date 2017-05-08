class QuakesController < ApplicationController
#  before_filter :authenticate_request!

  def show
    @location = Cities.find(params[:id])
    @quake_datas=Quakes.where(city_id: @location.id)
    @quake_city=@location.name
  #  render json:{
  #      sehir: @location.name,
  #      deprem_kayitlari: @quake_datas.order(:date)
  #    }
    #render json:{
     #sehir: @location.name,
      #eldekikayitlar: @location.recordings
    #}
  end


  def cities
      @city = Cities.all
      if id=params[:id]
        @city=@city.where(id: id)
      end

  end
#  def datas
#    @datas = Quake.search(params[:city_id],params[:siddet]).all
#    render json: @datas, status: 200
#  end

  def index
    @quakes=Quakes.all
    if city_id=params[:city_id]
      @quakes=@quakes.where(city_id: city_id)
    end


  end

end
