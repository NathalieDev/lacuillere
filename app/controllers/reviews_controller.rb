class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create]
end

def new
  @review = @restaurant.reviews.build
end

def create
  @review = Review.new(review_params)
  @review.save
  redirect_to restaurant_path(@restaurant)
end

private

def set_restaurant
  @review = Review.find(params[:restaurant_id])
end

def review_params
  params.require(:review).permit(:content, :rating)
end
