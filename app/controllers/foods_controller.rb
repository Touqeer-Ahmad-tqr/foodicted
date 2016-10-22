class FoodsController < ApplicationController
  def recipe
  	@logo="foodicted_logo.png"
  	@search_term = params[:looking_for]
  	@foods = Food.for(@search_term)
  end

end
