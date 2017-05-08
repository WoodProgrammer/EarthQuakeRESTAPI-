class Api::LocationsController < ApplicationController
  before_action :show
  def show
    @location = Cities.find(params[:id])
    @quake_datas=Quakes.where(city_id: @location.id)
    render json:{
        sehir: @location.name,
        deprem_kayitlari: @quake_datas.order(:date)
      }
    #render json:{
     #sehir: @location.name,
      #eldekikayitlar: @location.recordings
    #}
end
  #def interactive_api
  #  @location = Cities.find(params[:id])
  #  render html:{
  #    sehir: @locations.name
#    }
#  end

  private
  def set_location
    @location = Cities.find(params[:id])
  end
end
