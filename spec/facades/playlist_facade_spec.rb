require 'rails_helper'

RSpec.describe PlaylistFacade, type: :facade do
  describe "#generate_playlist" do
    before :each do
      @theme = create(:theme, s3_key: "test_theme", image_link: "test_theme_image_link")  
      @character = create(:character, theme: @theme, s3key: "test_character")
    end
    it "returns a playlist", :vcr => { :cassette_name => "playlist/GET_/api/v1/themes/_theme_id/characters/_character_id/playlist_genre_hip-hop/returns_to_you_10_songs_in_a_playlist" } do
      info = {character_id: @character.id, theme_id: @theme.id, genre: "hip-hop"}   
      playlist = PlaylistFacade.new.generate_playlist(info)
      
      expect(playlist).to be_a(Hash)
      expect(playlist[:choices]).to be_a(Array)
      expect(playlist[:choices].first[:message][:role]).to eq("assistant")
      expect(playlist[:choices].first[:message][:content]).to be_a(String)
      expect(playlist[:object]).to eq("chat.completion")
    end

    it "returns an error when character_id is invalid" do
      invalid_info = { character_id: -1, theme_id: @theme.id, genre: "hip-hop" }
      expect { PlaylistFacade.new.generate_playlist(invalid_info) }.to raise_error(ActiveRecord::RecordNotFound)
    end    

    it "returns an error when theme_id is invalid" do
      invalid_info = { character_id: @character.id, theme_id: -1, genre: "hip-hop" }
      expect { PlaylistFacade.new.generate_playlist(invalid_info) }.to raise_error(ActiveRecord::RecordNotFound)
    end
    
    it "returns an error when genre is empty or nil" do
      empty_genre_info = { character_id: @character.id, theme_id: @theme.id, genre: "" }
      nil_genre_info = { character_id: @character.id, theme_id: @theme.id, genre: nil }

      stub_request(:any, /api.openai.com/).to_return(status: 200, body: "{}", headers: {})

      expect { PlaylistFacade.new.generate_playlist(empty_genre_info) }.to raise_error(ArgumentError)
      expect { PlaylistFacade.new.generate_playlist(nil_genre_info) }.to raise_error(ArgumentError)
    end
    
    it "handles external API error gracefully" do
      info = { character_id: @character.id, theme_id: @theme.id, genre: "hip-hop" }
      allow(PlaylistService).to receive(:new).and_raise(StandardError.new("External API Error"))
    
      expect { PlaylistFacade.new.generate_playlist(info) }.to raise_error(StandardError, "External API Error")
    end
    
    it "handles unexpected API response" do
      info = { character_id: @character.id, theme_id: @theme.id, genre: "hip-hop" }
      unexpected_response = { unexpected_key: "unexpected_value" }
      allow_any_instance_of(PlaylistService).to receive(:generate_playlists).and_return(unexpected_response)
    
      playlist = PlaylistFacade.new.generate_playlist(info)
    
      expect(playlist).to be_a(Hash)
      expect(playlist).to eq(unexpected_response)
    end    
  end
end

