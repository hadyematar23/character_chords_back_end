class Chordsapi::V1::PlaylistsController < ApplicationController

  def create
    begin
      playlist = PlaylistFacade.new.generate_playlist(params)
      character = Character.find(params[:character_id])
      theme = character.theme
      
      created_playlist = Playlist.create!(genre: params[:genre], character: character.name, alignment: character.alignment, songs: [playlist[:choices].first[:message][:content]])    
      
      serialized_playlist= PlaylistSerializer.new.generate_playlist(created_playlist, character, theme)

      render json: serialized_playlist
    rescue ArgumentError => e
      render json: { error: e.message }, status: :bad_request
    end
  end
  
  def show
    playlist = Playlist.find(params[:id])
    serialized = PlaylistSerializer.new.render_playlist(playlist)
    render json: serialized
  end
end
