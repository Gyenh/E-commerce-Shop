# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
  title: "T-shirt 1",
  description: "Un joli mug pour votre café",
  price: 12.5,
  image_url: "1.gif")

Product.create(
  title: "T-shirt 2",
  description: "Parfait pour le sport",
  price: 25,
  image_url: "2.jpg")

  Product.create(
    title: "T-shirt 3",
    description: "Un joli mug pour votre café",
    price: 28.99,
    image_url: "3.gif")

  Product.create(
    title: "T-shirt 4",
    description: "Parfait pour le sport",
    price: 34,
    image_url: "4.jpg")

  Product.create(
    title: "T-shirt 5",
    description: "Parfait",
    price: 34,
    image_url: "5.gif")

  Product.create(
    title: "T-shirt 6",
    description: "Le sport",
    price: 34,
    image_url: "6.gif")