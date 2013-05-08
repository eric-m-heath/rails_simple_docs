class CategoriesController < ApplicationController
  def index
    @all_categories = get_all_categories
    @categories = Category.order('name').all
  end

  def new
    prep_for_new_category
  end

  def create
    @category = Category.new(params[:category])
    @category.name = @category.name.titleize
    if @category.save
      flash.now[:success] = "New category added"
      prep_for_new_category
      render 'new'
    else
      @all_categories = get_all_categories
      render 'new'
    end
  end

  def get_all_categories
    Category.order('name').all
  end

  def prep_for_new_category
    @all_categories = get_all_categories
    @category = Category.new
  end
end
