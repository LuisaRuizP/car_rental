class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def car_params
    params.require(:car).permit(:model, :price, photos: [])
  end
end
