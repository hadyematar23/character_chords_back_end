require 'rails_helper'

RSpec.describe PlaylistService, type: :service do
  describe "#generate_playlists", :vcr => { :cassette_name => "playlist/GET_/api/v1/themes/_theme_id/characters/_character_id/playlist_genre_hip-hop/returns_to_you_10_songs_in_a_playlist" } do
    it "returns a playlist" do
      theme = create(:theme)
      character = create(:character, theme: theme)
      info = {character_id: character.id, theme_id: theme.id, genre: "pop"}
      playlist = PlaylistService.new.generate_playlists(info)
      expect(playlist).to be_a(Hash)
      expect(playlist[:choices]).to be_a(Array)
      expect(playlist[:choices].first[:message][:role]).to eq("assistant")
      expect(playlist[:choices].first[:message][:content]).to be_a(String)
      expect(playlist[:object]).to eq("chat.completion")
    end
  end
  
  describe "#generate_playlists - edge case: fewer than 10 songs returned", :vcr => { :cassette_name => "playlist/GET_/api/v1/themes/_theme_id/characters/_character_id/playlist_genre_hip-hop/fewer_than_10_songs" } do
    it "returns a playlist with fewer than 10 songs" do
      theme = create(:theme)
      character = create(:character, theme: theme)
      info = {character_id: character.id, theme_id: theme.id, genre: "pop"}
      playlist = PlaylistService.new.generate_playlists(info)
      song_count = playlist[:choices].first[:message][:content].split(" NEXT_SONG ").count
  
      expect(playlist).to be_a(Hash)
      expect(song_count).to be < 10
    end
  end

  describe "#generate_playlists - sad path: API returns an error", :vcr => { :cassette_name => "playlist/GET_/api/v1/themes/_theme_id/characters/_character_id/playlist_genre_hip-hop/api_error" } do
    before do
      allow_any_instance_of(PlaylistService).to receive(:get_url).and_raise(Faraday::Error)
    end
  
    it "raises a Faraday::Error" do
      theme = create(:theme)
      character = create(:character, theme: theme)
      info = {character_id: character.id, theme_id: theme.id, genre: "pop"}
  
      expect { PlaylistService.new.generate_playlists(info) }.to raise_error(Faraday::Error)
    end
  end  
end