require 'rails_helper'

RSpec.describe "All Characters", type: :request do
  describe "GET /themes/:theme_id/characters" do
    it "gives you back all characters for a given theme" do
      theme = Theme.create!(name: "lawyer") 
      create_list(:question, 6, theme: theme, good_evil_chaotic_lawful: 0)
      create_list(:question, 6, theme: theme, good_evil_chaotic_lawful: 1)

      Character.create!(name: "Thurgood Marshall", theme_id: theme.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, url: "url.com", alignment: 1)
      Character.create!(name: "Amal Clooney", theme_id: theme.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, url: "url.com", alignment: 2)
      Character.create!(name: "Clarence Darrow", theme_id: theme.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, url: "url.com", alignment: 3)

      Character.create!(name: "Jack McCoy", theme_id: theme.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, url: "url.com", alignment: 4)
      Character.create!(name: "Robert Shapiro", theme_id: theme.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, url: "url.com", alignment: 5)
      Character.create!(name: "Saul Goodman", theme_id: theme.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, url: "url.com", alignment: 6)

      Character.create!(name: "Roy Cohn", theme_id: theme.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, url: "url.com", alignment: 7)
      Character.create!(name: "Michael Cohen", theme_id: theme.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, url: "cohenurl.com", alignment: 8)
      Character.create!(name: "John Milton", theme_id: theme.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, url: "url.com", alignment: 9)
      
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
      end
    end
  end
end