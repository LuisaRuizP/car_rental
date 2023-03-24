# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Car.destroy_all
User.destroy_all

user = User.create(email: "owner@gmail.com", password: "123456")

file = URI.open("https://cdn.drivek.com/configurator-imgs/cars/fr/original/MERCEDES/EQS/40609_BERLINE-A-HAYON-5-PORTES/mercedes-benz-eqs-2021-front-side-1.jpg")
car = Car.create(brand: "Mercedes-Benz", model: "A", passengers: "5", power: "120", fuel_type: "Oil", price: 1000, user:user, address: "Paris")
car.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
car.save

file = URI.open("https://cdn.lesnumeriques.com/optim/news/18/183299/dfb9091e-la-bmw-serie-3-s-offre-un-facelift-et-de-nouvelles-technologies-pour-2022__1200_900__0-33-2177-1260.jpeg")
car = Car.create(brand: "BMW", model: "A", passengers: "5", price: 500, power: "120",fuel_type: "Oil", user:user, address: "London")
car.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
car.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Peugeot_Onyx_%288093626076%29.jpg/800px-Peugeot_Onyx_%288093626076%29.jpg")
car = Car.create(brand: "Peugeot",model: "A", passengers: "5", price: 300, power: "120", fuel_type: "Oil",user:user, address: "Berlin")
car.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
car.save

file = URI.open("https://www.forbesindia.com/media/images/2022/Aug/img_192649_luxurycar.jpg")
car = Car.create(brand: "Lamborghinis", model: "A", passengers: "3", price: 5000, power: "120", fuel_type: "Oil", user:user, address: "Lille")
car.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
car.save

file = URI.open("https://www.automobile-magazine.fr/asset/cms/208139/config/155671/ferrari-vgt-01.jpg")
car = Car.create(brand: "Ferrari", model: "A", passengers: "2", price: 5000, power: "120", fuel_type: "Oil", user:user, address: "Nice")
car.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
car.save

file = URI.open("https://imgd.aeplcdn.com/0x0/cw/ec/9777/Bentley-Continental-GTC-Right-Front-Three-Quarter-157717.jpg?wm=0")
car = Car.create(brand: "Bently", model: "A", passengers: "2", price: 4000, power: "120",fuel_type: "Oil",user:user, address: "Brussel")
car.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
car.save
