class FoodsController < ApplicationController

  def index
  end

  def get_recipes
  	@foods = Food.for(params[:looking_for])
  	@foods = Kaminari.paginate_array(@foods).page(params[:page]).per(10) if @foods.present? && @foods != 'error'
  end

end
