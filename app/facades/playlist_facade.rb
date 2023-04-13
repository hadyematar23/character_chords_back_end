class PlaylistFacade

  def generate_playlist(info)
     playlist = PlaylistService.new.generate_playlists(info)
  end
end