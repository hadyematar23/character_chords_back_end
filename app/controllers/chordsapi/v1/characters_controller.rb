class Chordsapi::V1::CharactersController < ApplicationController
  def index
    characters= Theme.find(params[:theme_id]).characters

    result = characters.where('good_max >= ?', params[:good_evil]).where('good_min <= ?', params[:good_evil]).where('lawful_max >=?', params[:lawful_chaotic]).where('lawful_min<=?', params[:lawful_chaotic])
    result = result.first
    render json: CharacterSerializer.new(result).serialize_character
  end
end
