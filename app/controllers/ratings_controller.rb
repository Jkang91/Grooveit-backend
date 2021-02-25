class RatingsController < ApplicationController

    def show 
        rating = Rating.find(params[:id])
    end

    def create
        rating = Rating.create(rating_params)
        render json: rating
    end

    def update
        rating = Rating.find(params[:id])
        rating.update(rating: params[:rating])
        render json: rating
    end

    private

    def rating_params
        params.permit(:user_id, :dance_video_id, :rating)
    end
end
