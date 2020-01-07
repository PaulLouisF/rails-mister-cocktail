class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    Dose.create(dose_params)
    raise
  end


  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def dose_params
    params.require(:cocktail).permit(:doses, :ingredients)
  end


end
