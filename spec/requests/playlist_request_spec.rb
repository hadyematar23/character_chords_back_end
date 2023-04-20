require 'rails_helper'

RSpec.describe "playlist", type: :request do
  describe "POST /api/v1/themes/:theme_id/characters/:character_id/playlist?genre=hip-hop" do
    before(:each) do 
      @theme = Theme.create!(name: "lawyer", s3_key: "test", image_link: "test_image") 
      create_list(:question, 6, theme: Theme.all.first, good_evil_chaotic_lawful: 0)
      create_list(:question, 6, theme: Theme.all.first, good_evil_chaotic_lawful: 1)

      Character.create!(name: "Thurgood Marshall", theme_id: @theme.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LawyerCharacters/ThurgoodMarshall.jpeg', alignment: 1, description: "This is a test")
      Character.create!(name: "Amal Clooney", theme_id: @theme.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LawyerCharacters/AmalClooney.jpeg', alignment: 2, description: "This is a test")
      Character.create!(name: "Clarence Darrow", theme_id: @theme.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LawyerCharacters/ClarenceDarrow.jpeg', alignment: 3, description: "This is a test" )
      
      Character.create!(name: "Jack McCoy", theme_id: @theme.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LawyerCharacters/JackMccoy.jpeg', alignment: 4, description: "This is a test" )
      Character.create!(name: "Robert Shapiro", theme_id: @theme.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LawyerCharacters/RobertShapiro.jpeg', alignment: 5, description: "This is a test")
      @jimmy = Character.create!(name: "Saul Goodman AKA Slippin' Jimmy", theme_id: @theme.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LawyerCharacters/SaulGoodman.webp', alignment: 6, description: "This is a test")
      
      Character.create!(name: "Roy Cohn", theme_id: @theme.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LawyerCharacters/RoyCohn.webp', alignment: 7, description: "This is a test")
      Character.create!(name: "Michael Cohen", theme_id: @theme.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LawyerCharacters/MichaelCohen.jpeg', alignment: 8, description: "This is a test")
      Character.create!(name: "Rudy Guiliani", theme_id: @theme.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LawyerCharacters/RudyGuiliani.webp', alignment: 9, description: "This is a test")
    end

    it "creates a playlist, saves it to the database, and then redirects to the show page, returns to you a serialized JSON playlist with 10 songs in it", :vcr do 

      expect(Playlist.count).to eq(0)

      post "/chordsapi/v1/themes/#{@theme.id}/characters/#{@jimmy.id}/playlists?genre=hip-hop"
      parsed_playlist = JSON.parse(response.body, symbolize_names: true)

      expect(Playlist.count).to eq(1)
      expect(response.status).to eq(200)
      expect(parsed_playlist).to be_a(Hash)
      expect(parsed_playlist[:links]).to be_a(Hash)
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

    it "the get action will return a JSON hash of the playlist object", :vcr do 
      post "/chordsapi/v1/themes/#{Theme.first.id}/characters/#{@jimmy.id}/playlists?genre=hip-hop" #creating the playlist 

      get "/chordsapi/v1/themes/#{Theme.first.id}/characters/#{@jimmy.id}/playlists/#{Playlist.first.id}"
      Theme.create(name: "lawyer")
      
      parsed_playlist = JSON.parse(response.body, symbolize_names: true)
      expect(response.status).to eq(200)
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
      expect(parsed_playlist[:data][:attributes][:song_titles].count).to eq(1)
      parsed_playlist[:data][:attributes][:song_titles].each do |song|
        expect(song).to be_a(String)
      end
    end
  end
  describe "sad path" do
    before(:each) do 
      @theme = Theme.create!(name: "lawyer", s3_key: "test", image_link: "test_image") 
      create_list(:question, 6, theme: Theme.all.first, good_evil_chaotic_lawful: 0)
      create_list(:question, 6, theme: Theme.all.first, good_evil_chaotic_lawful: 1) 
      Character.create!(name: "Saul Goodman AKA Slippin' Jimmy", theme_id: @theme.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LawyerCharacters/SaulGoodman.webp', alignment: 6, description: "This is a test")
    end   

    it "returns a 400 status code if an invalid genre value is provided", :vcr do 
      @theme = Theme.create!(name: "lawyer", s3_key: "test", image_link: "test_image") 

      Character.create!(name: "Saul Goodman AKA Slippin' Jimmy", theme_id: @theme.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LawyerCharacters/SaulGoodman.webp', alignment: 6, description: "This is a test")
      
      expect(Playlist.count).to eq(0)

      post "/chordsapi/v1/themes/#{Theme.first.id}/characters/#{Character.first.id}/playlists?genre="
      expect(response.status).to eq(400)
    end
  end
end 