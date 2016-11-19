class CocktailsController < ApplicationController

# A user can :

# See the list of cocktails /cocktails/
def index
  @cocktails = Cocktail.all
end

# See on cocktail /cocktails/:id
def show
  @cocktail = Cocktail.find(params[:id])
  @dose = Dose.new
end

# Create a NEW cocktail /cocktails/new
def new
  @cocktail = Cocktail.new
end

def create
  @cocktail = Cocktail.new(cocktail_params)
  @cocktail.save
  redirect_to cocktail_path(@cocktail)

end

def destroy
  @cocktail = Cocktail.find(params[:id])
  @cocktail.destroy
  redirect_to cocktails_path
end

private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

end

