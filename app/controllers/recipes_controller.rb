class RecipesController < ApplicationController
  def index
	@recipes = Recipe.all
  end

  def show
	@recipe = Recipe.find(params[:id])
  end
  
  def new
    
  end

  def create
    @recipe = Recipe.new(recipe_params)
	
	if !@recipe.save
	  render 'new'
	  return
	end
	# funkar detta? utropstecken samt return
	redirect_to recipe_path(@recipe)
  end

  def edit
  end

  def destroy
  end
  
  
  private
	def recipe_params
	  params.require(:recipe).permit(:title, :description, :ingredient_list, :instruction)
	end
  
end
