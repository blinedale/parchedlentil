class RecipesController < ApplicationController
  def index
	@recipes = Recipe.all
  end

  def show
	@recipe = Recipe.find(params[:id])
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
