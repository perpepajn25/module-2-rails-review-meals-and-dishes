class Dish < ApplicationRecord
  has_many :meal_dishes
  has_many :meals, through: :meal_dishes
end
