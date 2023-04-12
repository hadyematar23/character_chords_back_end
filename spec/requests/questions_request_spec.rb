require 'rails_helper'

RSpec.describe "questions", type: :request do
  describe "GET /themes/:theme_id/questions" do
    it "can get all the questions from a specific theme" do 
      create_list(:theme, 2)
      create_list(:question, 6, theme: Theme.all.first, good_evil_chaotic_lawful: 0)
      create_list(:question, 6, theme: Theme.all.first, good_evil_chaotic_lawful: 1)
      create_list(:question, 12, theme: Theme.all.second)
      get "/chordsapi/v1/themes/#{Theme.all.first.id}/questions"
      
      parsed_items = JSON.parse(response.body, symbolize_names: true)
      expect(response).to have_http_status(200)
      expect(parsed_items).to have_key(:links)
      expect(parsed_items).to have_key(:data)
      expect(parsed_items[:data].count).to eq(12)
      expect(parsed_items[:data].first[:id]).to eq(1)
      expect(parsed_items[:data].last[:id]).to eq(12)

      parsed_items[:data].each do |question|
        expect(question[:type]).to eq("question")
        expect(question[:id]).to be_a(Integer)
        expect(question[:attributes]).to be_a(Hash)
        expect(question[:attributes][:name]).to be_a(String)
        expect(question[:attributes][:quiz]).to be_a(String)
        expect(question[:attributes][:spectrum]).to (eq('good_evil').or eq('chaotic_lawful'))
        expect(question[:attributes][:quiz]).to eq(Theme.all.first.name)
        expect(question[:attributes][:answers]).to be_a(Hash)
        question[:attributes][:answers].each do |answer|
          expect(answer).to be_a(Array)
        end
        expect(question[:attributes][:answers][:A]).to be_a(Hash)
        expect(question[:attributes][:answers][:A][:value]).to eq(1)
        expect(question[:attributes][:answers][:B]).to be_a(Hash)
        expect(question[:attributes][:answers][:B][:value]).to eq(2)
        expect(question[:attributes][:answers][:C]).to be_a(Hash)
        expect(question[:attributes][:answers][:C][:value]).to eq(3)
        expect(question[:attributes][:answers][:D]).to be_a(Hash)
        expect(question[:attributes][:answers][:D][:value]).to eq(4)
        expect(question[:attributes][:answers][:E]).to be_a(Hash)
        expect(question[:attributes][:answers][:E][:value]).to eq(5)

      end
    end
  end 
end 