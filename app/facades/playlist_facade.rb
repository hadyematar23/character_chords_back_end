class PlaylistFacade

  def initialize(info) 
     PlaylistService.new.generate_playlists(info)
  end

end