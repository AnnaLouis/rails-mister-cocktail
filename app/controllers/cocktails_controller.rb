class CocktailsController < ApplicationController

# A user can :

# See the list of cocktails /cocktails/
def index
  @cocktails = Cocktail.all
end

# See on cocktail /cocktails/:id
def show
  @cocktail = Cocktail.find(params[:id])
end

# Create a NEW cocktail /cocktails/new
def new
  @cocktail = Cocktail.new
end

def create
  cocktail = Cocktail.new(cocktail_params)
  cocktail.save
  redirect_to cocktails_path(cocktail)

end

private

  def cocktail_params
    paramas.require.(:cocktail).permit(:name)
  end

end

