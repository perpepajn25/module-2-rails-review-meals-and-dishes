class MealsController < ApplicationController

  def index
    @meals = Meal.all
  end

  def show
      @meal = Meal.find(params[:id])
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])
    if @meal.update(meal_params)
      redirect_to meal_path(@meal)
    else
      render edit_meal_path(@meal)
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:name,:location,:date)
  end

end
