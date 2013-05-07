class CategoriesController < ApplicationController
  def index
    @categories = Category.order('name').all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to categories_path
    else
      render 'new'
    end
  end
end
