class PlaylistFacade

  def generate_playlist(info)
     character = Character.find(info[:character_id])
     playlist = PlaylistService.new.generate_playlists(info)
     
     x = PlaylistSerializer.new.generate_playlist(character, playlist, info[:genre])

     Playlist.create!(genre: x[:data][:genre], character: x[:data][:attributes][:character_name], alignment: x[:data][:attributes][:character_alignment], songs: x[:data][:attributes][:song_titles])

     return x
  end
end