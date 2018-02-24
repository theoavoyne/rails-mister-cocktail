class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [ :show, :edit, :destroy ]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new()
  end

  def create
    @cocktail = Cocktail.create!(cocktail_params)

    redirect_to cocktails_path
  end

  def edit
  end

  def update
    @cocktail = Cocktail.update(cocktail_params)

    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail.destroy

    redirect_to cocktails_path
  end

  private

  def find_cocktail
    @id = params[:id]
    @cocktail = Cocktail.find(@id)
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :imageurl, :time, :photo)
  end
end
