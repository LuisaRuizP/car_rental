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
car = Car.create(model: "Mercedes-Benz", passengers: "5", price: 1000, user:user)
car.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
car.save

file = URI.open("https://medias.blogbmw.fr/2022/08/hycade-bmw-m1-concept-une.jpg")
car = Car.create(model: "BMW", passengers: "5", price: 500, user:user)
car.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
car.save

file = URI.open("https://www.turbo.fr/sites/default/files/styles/article_690x405/public/2023-03/Peugeot%20RCZ%20R_0.jpg?itok=2ZdwLBcg")
car = Car.create(model: "Peugeot", passengers: "5", price: 300, user:user)
car.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
car.save

file = URI.open("https://www.forbesindia.com/media/images/2022/Aug/img_192649_luxurycar.jpg")
car = Car.create(model: "Lamborghinis", passengers: "3", price: 5000, user:user)
car.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
car.save

file = URI.open("https://www.automobile-magazine.fr/asset/cms/208139/config/155671/ferrari-vgt-01.jpg")
car = Car.create(model: "Ferrari", passengers: "2", price: 5000, user:user)
car.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
car.save

file = URI.open("https://imgd.aeplcdn.com/0x0/cw/ec/9777/Bentley-Continental-GTC-Right-Front-Three-Quarter-157717.jpg?wm=0")
car = Car.create(model: "Bently", passengers: "2", price: 4000, user:user)
car.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
car.save
