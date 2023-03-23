class CarsController < ApplicationController
  def index
    @cars = Car.all
    if params[:brand].present?
      @cars = @cars.where("brand ILIKE ?", "%#{params[:brand]}%")
    end
    if params[:location].present?
      @cars = @cars.where("location ILIKE ?", "%#{params[:location]}%")
    end
    if params[:passengers].present?
      @cars = @cars.where("passengers = ?", "#{params[:passengers]}")
    end
    if params[:price].present?
      @cars = @cars.where("price = ?", "#{params[:price]}")
    end
  end


  def show
    @car = Car.find(params[:id])
  end
end
