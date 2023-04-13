class Chordsapi::V1::PlaylistsController < ApplicationController

  def create 
    playlist = PlaylistFacade.new.generate_playlist(params)
    serialized_playlist= PlaylistSerializer.new.generate_playlist(Character.find(params[:character_id]), playlist, params[:genre])
    created_playlist = Playlist.create!(genre: serialized_playlist[:data][:genre], character: serialized_playlist[:data][:attributes][:character_name], alignment: serialized_playlist[:data][:attributes][:character_alignment], songs: serialized_playlist[:data][:attributes][:song_titles])    
    redirect_to "/chordsapi/v1/themes/#{params[:theme_id]}/characters/#{params[:character_id]}/playlists/#{created_playlist.id.to_s}"
  
  end
  
  def show
    playlist = Playlist.find(params[:id])
    serialized = PlaylistSerializer.new.render_playlist(playlist)
    render json: serialized
  end
end
