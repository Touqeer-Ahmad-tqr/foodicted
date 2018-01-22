class FoodsController < ApplicationController

  def index
  end

  def get_recipes
  	@search_term = params[:looking_for]
  	@foods = Food.for(@search_term)
  end

end
