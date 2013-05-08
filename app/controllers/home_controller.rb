class HomeController < ApplicationController
  def index
    @all_categories = Category.order('name').all
  end
end
