class CarsController < ApplicationController
  def index
    @cars = Car.all
    if params[:brand].present?
      @cars = @cars.where("brand ILIKE ?", "%#{params[:brand]}%")
    end
    if params[:location].present?
      @cars = @cars.where("address ILIKE ?", "%#{params[:location]}%")
    end
    if params[:passengers].present?
      @cars = @cars.where("passengers = ?", "#{params[:passengers]}")
    end
    if params[:price].present?
      @cars = @cars.where("price = ?", "#{params[:price]}")
    end

    @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {car: car}),
        marker_html: render_to_string(partial: "marker", locals: {car: car})
      }
    end
  end


  def show
    @car = Car.find(params[:id])
    @latitude = @car.latitude
    @longitude = @car.longitude
  end
end
