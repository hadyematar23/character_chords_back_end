class PlaylistFacade

  def generate_playlist(info)
     character = Character.find(info[:character_id])
     playlist = PlaylistService.new.generate_playlists(info)
     PlaylistSerializer.new.generate_playlist(character, playlist, info[:genre])
  end
end