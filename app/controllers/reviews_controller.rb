class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_params)
    @review.cocktail_id = @cocktail.id
    if @review.save
      redirect_to cocktail_path(@cocktail, anchor: 'reviews'), notice: 'Review added!'
    else
      render "cocktails/show", notice: 'Sorry your review is not valid, so we can\'t add it!'
    end
  end

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
    review_id = params[:id]
    @review = Review.find(review_id)
  end

  def update
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to cocktail_path(@cocktail, anchor: 'reviews'), notice: 'Review updated!'
    else
      render "cocktails/show", notice: 'Sorry your update is not valid, so we can\'t add it!'
    end
  end

  def destroy
    review_id = params[:id]
    @review = Review.find(review_id)
    @cocktail = Cocktail.find(@review.cocktail_id)
    @review.destroy
    redirect_to cocktail_path(@cocktail, anchor: 'reviews'), notice: 'Review deleted!'
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
