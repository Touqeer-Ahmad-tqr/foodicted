class FoodsController < ApplicationController

  def index
  end

def recipe
  	@search_term = params[:looking_for]
  	@foods = Food.for(@search_term)
  end

end
