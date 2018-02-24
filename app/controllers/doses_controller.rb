class DosesController < ApplicationController
  before_action :find_cocktail, only: [ :create ]
  def create
    @dose = Dose.new
    @dose.description = params[:dose][:description]
    @dose.cocktail = @cocktail
    @dose.ingredient_id = params[:dose][:ingredient]
    @dose.save!

    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy

    redirect_to cocktail_path(@cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
