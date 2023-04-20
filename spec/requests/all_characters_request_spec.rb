require 'rails_helper'

RSpec.describe "All Characters", type: :request do
  describe "GET /themes/:theme_id/characters" do
    it "gives you back all characters for a given theme" do
      theme = Theme.create!(name: "lawyer", s3_key: "test", image_link: "test_image") 
      create_list(:question, 6, theme: theme, good_evil_chaotic_lawful: 0)
      create_list(:question, 6, theme: theme, good_evil_chaotic_lawful: 1)
      
      Character.create!(name: "Thurgood Marshall", theme_id: theme.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LawyerCharacters/ThurgoodMarshall.jpeg', alignment: 1, description: "This is a test")
      Character.create!(name: "Amal Clooney", theme_id: theme.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LawyerCharacters/AmalClooney.jpeg', alignment: 2, description: "This is a test")
      Character.create!(name: "Clarence Darrow", theme_id: theme.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LawyerCharacters/ClarenceDarrow.jpeg', alignment: 3, description: "This is a test" )
      
      Character.create!(name: "Jack McCoy", theme_id: theme.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LawyerCharacters/JackMccoy.jpeg', alignment: 4, description: "This is a test" )
      Character.create!(name: "Robert Shapiro", theme_id: theme.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LawyerCharacters/RobertShapiro.jpeg', alignment: 5, description: "This is a test")
      Character.create!(name: "Saul Goodman AKA Slippin' Jimmy", theme_id: theme.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LawyerCharacters/SaulGoodman.webp', alignment: 6, description: "This is a test")
      
      Character.create!(name: "Roy Cohn", theme_id: theme.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LawyerCharacters/RoyCohn.webp', alignment: 7, description: "This is a test")
      Character.create!(name: "Michael Cohen", theme_id: theme.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LawyerCharacters/MichaelCohen.jpeg', alignment: 8, description: "This is a test")
      Character.create!(name: "Rudy Guiliani", theme_id: theme.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LawyerCharacters/RudyGuiliani.webp', alignment: 9, description: "This is a test")
      
      get "/chordsapi/v1/themes/#{theme.id}/characters"
      parsed_characters = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_characters).to be_a(Array)
      expect(parsed_characters.count).to eq(9)
      
      parsed_characters.each do |character|
        expect(character).to be_a(Hash)
        expect(character[:links]).to be_a(Hash)
        expect(character[:data]).to be_a(Hash)
        expect(character[:data][:attributes]).to be_a(Hash)

        expect(character[:data][:type]).to eq("character")
        expect(character[:data][:theme_id]).to eq(theme.id)
        expect(character[:data][:attributes][:name]).to be_a(String)
        expect(character[:data][:attributes][:quiz]).to eq(Theme.find(theme.id).name)
        expect(character[:data][:attributes][:alignment]).to be_a(String)
        expect(character[:data][:attributes][:character_id]).to be_a(Integer)
        expect(character[:data][:attributes][:description]).to be_a(String)
      end
    end

    it "gives you back no characters for a theme with no characters" do
      theme = Theme.create!(name: "doctor", s3_key: "test", image_link: "test_image")
      
      get "/chordsapi/v1/themes/#{theme.id}/characters"
      parsed_characters = JSON.parse(response.body, symbolize_names: true)
    
      expect(parsed_characters).to be_a(Array)
      expect(parsed_characters.count).to eq(0)
    end

    it "returns an error if the theme_id is invalid" do
      invalid_theme_id = 999
    
      expect { get "/chordsapi/v1/themes/#{invalid_theme_id}/characters" }.to raise_error(ActiveRecord::RecordNotFound)
    end     
  end
end