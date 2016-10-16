class FoodsController < ApplicationController
  def index
  	@logo="/assets/foodicted_logo.png"
  	@search_term = params[:looking_for] || 'noodle'
  	@foods = Food.for(@search_term)
  end

end
