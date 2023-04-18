require 'rails_helper'

RSpec.describe "character", type: :request do
  describe "GET /themes/:theme_id/characters?good_evil=0.23&lawful_chaotic=0.51" do

    it "gives you back the correct character based on the answers provided" do 
      lawyer = Theme.create(name: "lawyer") 
      create_list(:question, 6, theme: Theme.all.first, good_evil_chaotic_lawful: 0)
      create_list(:question, 6, theme: Theme.all.first, good_evil_chaotic_lawful: 1)

      Character.create!(name: "Thurgood Marshall", theme_id: lawyer.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LawyerCharacters/ThurgoodMarshall.jpeg', alignment: 1, description: "You are Thurgood Marshall, the legendary civil rights attorney and Supreme Court Justice. You are a champion of justice, always working to ensure that everyone has access to the same rights and freedoms. Your unwavering commitment to justice often puts you at odds with people who are unwilling to change, but your sense of fairness never waivers.")
      Character.create!(name: "Amal Clooney", theme_id: lawyer.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LawyerCharacters/AmalClooney.jpeg', alignment: 2, description: "You are Amal Clooney, a lawyer and activist who is a force to be reckoned with. You are a shining example of what it means to be a champion of justice and will fight for what is right no matter the odds.")
      Character.create!(name: "Clarence Darrow", theme_id: lawyer.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LawyerCharacters/ClarenceDarrow.jpeg', alignment: 3, description: "As Clarence Darrow, you embody the chaotic good alignment, driven by a passion for individual freedom and a desire to fight against injustice, even if it means breaking rules or challenging authority, always standing up for what you believe is right and never backing down from a challenge, and ultimately serving as a force for good in pursuit of a more just and equitable society." )

      Character.create!(name: "Jack McCoy", theme_id: lawyer.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LawyerCharacters/JackMccoy.jpeg', alignment: 4, description: "You are Jack McCoy, a lawful neutral character. You are a master of the courtroom and an expert at finding loopholes. You make sure justice is served and the law is followed, but you often do so with a bit of mischief and humor. You are a master of strategy and can outwit even the most cunning opponent. It may take a few rounds to get your point across, but in the end, you always get your way." )
      Character.create!(name: "Robert Shapiro", theme_id: lawyer.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LawyerCharacters/RobertShapiro.jpeg', alignment: 5, description: "You are Robert Shapiro (O.J. Simpson's lawyer), a true neutral. You are a master of the legal system and you have a knack of knowing where the loopholes are. You are never swayed by emotions and you always strive for a fair and reasonable outcome. You are an independent thinker and you have no problem standing up for what you believe in.")
      Character.create!(name: "Saul Goodman AKA Slippin' Jimmy", theme_id: lawyer.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LawyerCharacters/SaulGoodman.webp', alignment: 6, description: "You are Saul Goodman (fictional lawyer from Breaking Bad), you have a penchant for bending the law to suit your own needs, and you're always looking for a way to make a quick buck. You don't always play fair and you're not afraid to do whatever it takes to get what you want. You'll never turn down a challenge, and you're always ready to take a risk. Just don't be surprised if things don't always go your way.")

      Character.create!(name: "Roy Cohn", theme_id: lawyer.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LawyerCharacters/RoyCohn.webp', alignment: 7, description: "You are Roy Cohn, a ruthless, cunning and manipulative individual who will stop at nothing to achieve your goals. You follow the letter of the law but will bend it to your own advantage. You are a master of deception and an expert at finding loopholes in any situation. You will never accept defeat, no matter how dire the consequences")
      Character.create!(name: "Michael Cohen", theme_id: lawyer.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LawyerCharacters/MichaelCohen.jpeg', alignment: 8, description: "You are Michael Cohen, a corporate lawyer who always looks out for himself first. You always make sure your own interests are taken care of, no matter the cost to others. You're a master of manipulation and deception, and you have no qualms about using people to your own advantage.")
      Character.create!(name: "Rudy Guiliani", theme_id: lawyer.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LawyerCharacters/RudyGuiliani.jpeg', alignment: 9, description: "The master of chaotic evil, where eyebrow-raising press conferences, baseless conspiracy theories, and Four Seasons Total Landscaping mix for a potent cocktail of public disorder.")
            
      get "/chordsapi/v1/themes/#{Theme.all.first.id}/characters/find_character?good_evil=0.23&lawful_chaotic=0.51"
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
  end 
end 