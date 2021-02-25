class DanceVideosController < ApplicationController

    def index
        dance_videos = DanceVideo.all 
        render json: dance_videos
    end

    def show
        dance_video = DanceVideo.find(params[:id])
        render json: dance_video
    end
end
