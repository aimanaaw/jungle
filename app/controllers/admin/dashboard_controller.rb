class Admin::DashboardController < ApplicationController
  def show
    @products = Product.count
    @categories = Category.count
    # raise @products.inspect
  end
end
