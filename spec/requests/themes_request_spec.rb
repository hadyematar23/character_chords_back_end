require 'rails_helper'

RSpec.describe "themes", type: :request do
  describe "GET /chordsapi/v1/themes" do
    it "can get all the themes" do
      create_list(:theme, 5)
      get "/chordsapi/v1/themes"

      parsed_items = JSON.parse(response.body, symbolize_names: true)
  
      expect(response).to have_http_status(200)
      expect(parsed_items).to have_key(:data)
      expect(parsed_items[:data].count).to eq(5)
      expect(parsed_items[:data].first[:id]).to eq(Theme.all.first.id)
      expect(parsed_items[:data].last[:id]).to eq(Theme.all.last.id)
      
      parsed_items[:data].each do |theme|
        
        expect(theme[:type]).to eq("theme")
        expect(theme[:id]).to be_a(Integer)
        expect(theme[:attributes]).to be_a(Hash)
        expect(theme[:attributes]).to have_key(:name)
        expect(theme[:attributes][:name]).to be_a(String)
        expect(theme[:attributes]).to have_key(:image)
        expect(theme[:attributes][:image]).to be_a(String)
        expect(theme[:attributes]).to have_key(:title)
        expect(theme[:attributes][:image]).to be_a(String)
      end
    end
    
    it "returns an empty array when there are no themes" do
      get "/chordsapi/v1/themes"
    
      parsed_items = JSON.parse(response.body, symbolize_names: true)
    
      expect(response).to have_http_status(200)
      expect(parsed_items).to have_key(:data)
      expect(parsed_items[:data]).to be_an(Array)
      expect(parsed_items[:data].count).to eq(0)
    end

    it "returns an empty array if there are no themes" do
      get "/chordsapi/v1/themes"

      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(response).to have_http_status(200)
      expect(parsed_response).to have_key(:data)
      expect(parsed_response[:data]).to be_a(Array)
      expect(parsed_response[:data]).to be_empty
    end
  end
end