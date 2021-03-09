class RatingsController < ApplicationController

    def index
        ratings = Rating.all
        render json: ratings
    end

    def show 
        rating = Rating.find(params[:id])
        render json: rating
    end

    # def create
    #     # Check Rating table to see if there is a rating already that has the user_id and video_id from params
    #     # if above is YES then do a Rating.update
    #     # else 
    #     # Rating.create
    #     if Rating.exists?(Rating.find(params[:id]))
    #         rating.update(rating: params[:rating])
    #         render json: rating
    #     else 
    #         rating = Rating.create(rating_params)
    #         render json: rating
    #     end
    # end

    def create
        rating = Rating.create(rating_params)
        render json: rating
    end

    def update
        rating = Rating.find(params[:id])
        rating.update(rating: params[:id])
        render json: rating
    end

    private

    def rating_params
        params.permit(:user_id, :dance_video_id, :rating)
    end
end
