require 'rails_helper'

RSpec.describe "character", type: :request do
  describe "GET /themes/:theme_id/characters?good_evil=0.23&lawful_chaotic=0.51" do
    it "gives you back the correct character based on the answers provided" do 
      theme = Theme.create!(name: "lawyer", s3_key: "test", image_link: "test_image") 
      create_list(:question, 6, theme: Theme.all.first, good_evil_chaotic_lawful: 0)
      create_list(:question, 6, theme: Theme.all.first, good_evil_chaotic_lawful: 1)

      Character.create!(name: "Thurgood Marshall", theme_id: theme.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LawyerCharacters/ThurgoodMarshall.jpeg', alignment: 1, description: "This is a test")
      Character.create!(name: "Amal Clooney", theme_id: theme.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LawyerCharacters/AmalClooney.jpeg', alignment: 2, description: "This is a test")
      Character.create!(name: "Clarence Darrow", theme_id: theme.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LawyerCharacters/ClarenceDarrow.jpeg', alignment: 3, description: "This is a test" )
      
      Character.create!(name: "Jack McCoy", theme_id: theme.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LawyerCharacters/JackMccoy.jpeg', alignment: 4, description: "This is a test" )
      Character.create!(name: "Robert Shapiro", theme_id: theme.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LawyerCharacters/RobertShapiro.jpeg', alignment: 5, description: "This is a test")
      Character.create!(name: "Saul Goodman AKA Slippin' Jimmy", theme_id: theme.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LawyerCharacters/SaulGoodman.webp', alignment: 6, description: "This is a test")
      
      Character.create!(name: "Roy Cohn", theme_id: theme.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LawyerCharacters/RoyCohn.webp', alignment: 7, description: "This is a test")
      Character.create!(name: "Michael Cohen", theme_id: theme.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LawyerCharacters/MichaelCohen.jpeg', alignment: 8, description: "This is a test")
      Character.create!(name: "Rudy Guiliani", theme_id: theme.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LawyerCharacters/RudyGuiliani.webp', alignment: 9, description: "This is a test")
            
      get "/chordsapi/v1/themes/#{theme.id}/characters/find_character?good_evil=0.23&lawful_chaotic=0.51"
      parsed_character = JSON.parse(response.body, symbolize_names: true)
      expect(parsed_character).to be_a(Hash)
      expect(parsed_character[:links]).to be_a(Hash)
      expect(parsed_character[:links][:image]).to be_a(String)
      expect(parsed_character[:data]).to be_a(Hash)
      expect(parsed_character[:data][:type]).to eq("character")
      expect(parsed_character[:data][:theme_id]).to eq(Theme.all.first.id)
      expect(parsed_character[:data][:attributes][:name]).to be_a(String)
      expect(parsed_character[:data][:attributes][:quiz]).to eq(Theme.find(Theme.all.first.id).name)
      expect(parsed_character[:data][:attributes][:alignment]).to be_a(String)
      expect(parsed_character[:data][:attributes][:character_id]).to be_a(Integer)
    end
    
    it "returns an error response when given invalid query parameters" do
      theme = Theme.create!(name: "lawyer", s3_key: "test", image_link: "test_image") 
      get "/chordsapi/v1/themes/#{theme.id}/characters/find_character?good_evil=2&lawful_chaotic=0.51"

      expect(response).to have_http_status(:unprocessable_entity)
      expect(JSON.parse(response.body)["error"]).to eq("Invalid parameters")
    end
    
    it "returns an error response when given an invalid theme ID" do
      get "/chordsapi/v1/themes/999/characters/find_character?good_evil=0.23&lawful_chaotic=0.51"

      expect(response).to have_http_status(:not_found)
      expect(JSON.parse(response.body)["error"]).to eq("Theme not found")
    end    
  end 
end 