class Chordsapi::V1::PlaylistsController < ApplicationController
  def show 
    playlist = PlaylistFacade.new(params)
    playlist.generate_playlist
  end

end
