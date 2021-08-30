class StoreController < ApplicationController

  include CurrentCart
  before_action :set_cart

  def increment_counter
    if session[:counter].nil? 
      session[:counter] = 0
    end 
    session[:counter] += 1
  end 
  
  def reset_counter
    session[:counter] = 0
  end  

  def index
    @products = Product.order(:title)
    @count = increment_counter
    @shown_message = "You've been here #{@count} times" if @count > 5

    @time = Time.now
  end
end
