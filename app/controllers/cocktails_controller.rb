class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [ :show ]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktails = Cocktail.new
  end

  def create
  end

  private

  def find_cocktail
    @id = params[:id]
    @cocktail = Cocktail.find(@id)
  end
end
