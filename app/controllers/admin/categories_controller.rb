class Admin::CategoriesController < ApplicationController
  before_action :authenticate_admin
<<<<<<< HEAD
  before_action :set_category, only: [:update, :destroy]
=======
  before_action :set_category, only: [:updae, :destroy]
>>>>>>> ced15f719ce75c42600cf00d6b2d540793f32e17

  def index
    @categories = Category.all
      if params[:id]
        set_category
      else
      @category = Category.new
    end
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "category was successfully created"
      redirect_to admin_categories_path
    else
      @categories = Category.all
      render :index
    end
  end 


  def update
    if @category.update(category_params)
      redirect_to admin_categories_path
      flash[:notice] = "Category was successfully updated"
    else
      @category = Category.all
      render :index
    end
  end

  def destroy
    @category.destroy
    flash[:alert] = "Category was successfully deleted"
    redirect_to admin_categories_path
  end

private

  def category_params
    params.require(:category).permit(:name)
  end

  def set_category
    @category = Category.find(params[:id])
  end

end