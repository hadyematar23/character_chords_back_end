class Chordsapi::V1::PlaylistsController < ApplicationController
  def index 
    playlist = PlaylistFacade.new.generate_playlist(params)
    render json: playlist
  end
end
