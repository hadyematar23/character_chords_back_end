class PlaylistFacade

  def generate_playlist(info)
    raise ArgumentError, "Genre cannot be empty or nil" if info[:genre].nil? || info[:genre].empty?
    playlist = PlaylistService.new.generate_playlists(info)
  end
end