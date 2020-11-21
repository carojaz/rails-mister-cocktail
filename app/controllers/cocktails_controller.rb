class CocktailsController < ApplicationController
  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to @cocktail, notice: 'Cocktail is created!'
    else
      render :new
    end
  end

  def index
    @cocktails = Cocktail.all
    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      @cocktails = Cocktail.where("name ILIKE ?", "%#{@name}%")
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @review = Review.new
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :description)
  end
end
