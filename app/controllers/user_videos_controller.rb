class UserVideosController < ApplicationController

    def index
        user_videos = UserVideo.all
        render json: user_videos
    end

    def create
        user_video = UserVideo.create(user_video_params)
        render json: user_video
    end

    def show
        user_video = UserVideo.find(params[:id])
        render json: user_video
    end

    def update
        user_video = UserVideo.find(params[:id])
        user_video.update(title: params[:title])
        render json: user_video
    end

    def destroy
        user_video = UserVideo.find(params[:id])
        user_video.destroy
    end

    private

    def user_video_params
        params.permit(:user_id, :title, :date)
    end
end
