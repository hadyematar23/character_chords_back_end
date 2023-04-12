require 'rails_helper'

RSpec.describe PlaylistFacade, type: :facade do
  describe "#generate_playlist" do
    it "returns a playlist", :vcr => { :cassette_name => "playlist/GET_/api/v1/themes/_theme_id/characters/_character_id/playlist_genre_hip-hop/returns_to_you_10_songs_in_a_playlist" } do
      theme = create(:theme)  
      character = create(:character, theme: theme)
      info = {character_id: character.id, theme_id: theme.id, genre: "hip-hop"}   
      playlist = PlaylistFacade.new.generate_playlist(info)
      
      expect(playlist).to be_a(Hash)
      expect(playlist[:data]).to be_a(Hash)
      expect(playlist[:data][:type]).to eq("playlist")
      expect(playlist[:data][:attributes]).to be_a(Hash)
      expect(playlist[:data][:attributes][:character_name]).to be_a(String)
      expect(playlist[:data][:attributes][:quiz_theme]).to be_a(String)
      expect(playlist[:data][:attributes][:character_alignment]).to be_a(String)
      expect(playlist[:data][:attributes][:song_titles]).to be_an(Array)
    end
  end
end

