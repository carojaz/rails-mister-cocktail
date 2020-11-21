class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail_id = @cocktail.id
    if @dose.save
      redirect_to cocktail_path(@cocktail, anchor: 'ingredients'), notice: 'Dose added!'
    else
      render "cocktails/show", notice: 'Sorry your dose is not valid, so we can\'t add it!'
    end
  end

  def show
    @dose = Dose.find(params[:id])
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = Cocktail.find(@dose.cocktail_id)
    @dose.destroy
    redirect_to cocktail_path(@cocktail), notice: 'Dose deleted!'
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
