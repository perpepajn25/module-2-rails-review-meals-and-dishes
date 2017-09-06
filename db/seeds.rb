# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

m1 = Meal.create(name: "Family Dinner", date: DateTime.strptime("09/14/2017 18:00", "%m/%d/%Y %H:%M"), location: "My house")
m2 = Meal.create(name: "Brunch", date: DateTime.strptime("09/14/2009 12:00", "%m/%d/%Y %H:%M"), location: "Blooming Hill Farm")

d1 = Dish.create(name: "Turkey", dish_type: "meat")
d2 = Dish.create(name: "Green Beans", dish_type: "vegetable")
d3 = Dish.create(name: "Ham", dish_type: "meat")
d4 = Dish.create(name: "Pumpkin Pie", dish_type: "dessert")

MealDish.create(meal: m1, dish: d1)
MealDish.create(meal: m1, dish: d3)
MealDish.create(meal: m1, dish: d4)
MealDish.create(meal: m2, dish: d2)
MealDish.create(meal: m2, dish: d4)
