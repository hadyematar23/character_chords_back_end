class Chordsapi::V1::CharactersController < ApplicationController
  def index
    characters = Theme.find(params[:theme_id]).characters
    render json: CharacterSerializer.new(characters).serialize_all_characters
  end

  def find_character
    characters= Theme.find(params[:theme_id]).characters

    if params[:good_evil].to_f < 0 || params[:good_evil].to_f > 1 || params[:lawful_chaotic].to_f < 0 || params[:lawful_chaotic].to_f > 1
      render json: { error: 'Invalid parameters' }, status: :unprocessable_entity
    else
      result = characters.where('good_max >= ?', params[:good_evil]).where('good_min <= ?', params[:good_evil]).where('lawful_max >=?', params[:lawful_chaotic]).where('lawful_min<=?', params[:lawful_chaotic])
      result = result.first
      if result.nil?
        render json: { error: 'No matching character found' }, status: :not_found
      else
        render json: CharacterSerializer.new(result).serialize_character
      end
    end
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Theme not found' }, status: :not_found
  end
end
