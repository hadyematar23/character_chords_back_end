require 'rails_helper'

RSpec.describe PlaylistService, type: :service do
  describe "#generate_playlists", :vcr => { :cassette_name => "playlist/GET_/api/v1/themes/_theme_id/characters/_character_id/playlist_genre_hip-hop/returns_to_you_10_songs_in_a_playlist" } do
    it "returns a playlist" do
      theme = create(:theme)
      character = create(:character, theme: theme)
      info = {character_id: character.id, theme_id: theme.id, genre: "pop"}
      playlist = PlaylistService.new.generate_playlists(info)
      # binding.pry
      expect(playlist).to be_a(Hash)
      expect(playlist[:choices]).to be_a(Array)
      expect(playlist[:choices].first[:message][:role]).to eq("assistant")
      expect(playlist[:choices].first[:message][:content]).to be_a(String)
    end
  end
end

