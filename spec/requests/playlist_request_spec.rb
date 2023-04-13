require 'rails_helper'

RSpec.describe "playlist", type: :request do
  describe "GET /api/v1/themes/:theme_id/characters/:character_id/playlist?genre=hip-hop" do

    it "returns to you 10 songs in a playlist", :vcr do 
      Theme.create(name: "lawyer")
      create_list(:question, 6, theme: Theme.all.first, good_evil_chaotic_lawful: 0)
      create_list(:question, 6, theme: Theme.all.first, good_evil_chaotic_lawful: 1)

      Character.create!(name: "Thurgood Marshall", theme_id: Theme.first.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, url: "url.com", alignment: 1)
      Character.create!(name: "Amal Clooney", theme_id: Theme.first.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, url: "url.com", alignment: 2)
      Character.create!(name: "Clarence Darrow", theme_id: Theme.first.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, url: "url.com", alignment: 3)

      Character.create!(name: "Jack McCoy", theme_id: Theme.first.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, url: "url.com", alignment: 4)
      Character.create!(name: "Robert Shapiro", theme_id: Theme.first.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, url: "url.com", alignment: 5)
      jimmy = Character.create!(name: "Saul Goodman", theme_id: Theme.first.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, url: "url.com", alignment: 6)

      Character.create!(name: "Roy Cohn", theme_id: Theme.first.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, url: "url.com", alignment: 7)
      Character.create!(name: "Michael Cohen", theme_id: Theme.first.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, url: "cohenurl.com", alignment: 8)
      Character.create!(name: "Ted Bundy", theme_id: Theme.first.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, url: "url.com", alignment: 9)
      
      get "/chordsapi/v1/themes/#{Theme.first.id}/characters/#{jimmy.id}/playlists?genre=hip-hop"

      parsed_playlist = JSON.parse(response.body, symbolize_names: true)
      expect(parsed_playlist).to be_a(Hash)
      expect(parsed_playlist[:links]).to be_a(Hash)
      expect(parsed_playlist[:links][:image]).to be_a(String)
      expect(parsed_playlist[:data]).to be_a(Hash)
      expect(parsed_playlist[:data][:type]).to eq("playlist")
      expect(parsed_playlist[:data][:genre]).to be_a(String)
      expect(parsed_playlist[:data][:attributes]).to be_a(Hash)
      expect(parsed_playlist[:data][:attributes][:character_name]).to be_a(String)
      expect(parsed_playlist[:data][:attributes][:quiz_theme]).to be_a(String)
      expect(parsed_playlist[:data][:attributes][:character_alignment]).to be_a(String)
      expect(parsed_playlist[:data][:attributes][:song_titles]).to be_a(Array)
      expect(parsed_playlist[:data][:attributes][:song_titles].count).to eq(10)
      parsed_playlist[:data][:attributes][:song_titles].each do |song|
        expect(song).to be_a(String)
      end

    end
    it "each time the user inputs and makes a playlist, it creates a playlist that persists in the database", :vcr do 
      Theme.create(name: "lawyer")
      create_list(:question, 6, theme: Theme.all.first, good_evil_chaotic_lawful: 0)
      create_list(:question, 6, theme: Theme.all.first, good_evil_chaotic_lawful: 1)

      Character.create!(name: "Thurgood Marshall", theme_id: Theme.first.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, url: "url.com", alignment: 1)
      Character.create!(name: "Amal Clooney", theme_id: Theme.first.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, url: "url.com", alignment: 2)
      Character.create!(name: "Clarence Darrow", theme_id: Theme.first.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, url: "url.com", alignment: 3)

      Character.create!(name: "Jack McCoy", theme_id: Theme.first.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, url: "url.com", alignment: 4)
      Character.create!(name: "Robert Shapiro", theme_id: Theme.first.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, url: "url.com", alignment: 5)
      jimmy = Character.create!(name: "Saul Goodman", theme_id: Theme.first.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, url: "url.com", alignment: 6)

      Character.create!(name: "Roy Cohn", theme_id: Theme.first.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, url: "url.com", alignment: 7)
      Character.create!(name: "Michael Cohen", theme_id: Theme.first.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, url: "cohenurl.com", alignment: 8)
      bundy = Character.create!(name: "Ted Bundy", theme_id: Theme.first.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, url: "url.com", alignment: 9)
      
      expect(Playlist.all.count).to eq(0)
      get "/chordsapi/v1/themes/#{Theme.first.id}/characters/#{bundy.id}/playlists?genre=reggaton"
      expect(Playlist.all.count).to eq(1)

    end
  end 
end 