require 'rails_helper'

RSpec.describe "character", type: :request do
  describe "GET /themes/:theme_id/characters?good_evil=0.23&lawful_chaotic=0.51" do

    it "gives you back the correct character based on the answers provided" do 
      Theme.create(name: "lawyer")
      create_list(:question, 6, theme: Theme.all.first, good_evil_chaotic_lawful: 0)
      create_list(:question, 6, theme: Theme.all.first, good_evil_chaotic_lawful: 1)

      Character.create!(name: "Thurgood Marshall", theme_id: Theme.first.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, url: "url.com", alignment: 1)
      Character.create!(name: "Amal Clooney", theme_id: Theme.first.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, url: "url.com", alignment: 2)
      Character.create!(name: "Clarence Darrow", theme_id: Theme.first.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, url: "url.com", alignment: 3)

      Character.create!(name: "Jack McCoy", theme_id: Theme.first.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, url: "url.com", alignment: 4)
      Character.create!(name: "Robert Shapiro", theme_id: Theme.first.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, url: "url.com", alignment: 5)
      Character.create!(name: "Saul Goodman", theme_id: Theme.first.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, url: "url.com", alignment: 6)

      Character.create!(name: "Roy Cohn", theme_id: Theme.first.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, url: "url.com", alignment: 7)
      Character.create!(name: "Michael Cohen", theme_id: Theme.first.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, url: "cohenurl.com", alignment: 8)
      Character.create!(name: "John Milton", theme_id: Theme.first.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, url: "url.com", alignment: 9)
            
      get "/chordsapi/v1/themes/#{Theme.all.first.id}/characters/show?good_evil=0.23&lawful_chaotic=0.51"
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

    end 
  end 
end 