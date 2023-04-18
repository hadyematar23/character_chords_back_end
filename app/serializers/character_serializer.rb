class CharacterSerializer

  def initialize(info)
    @info = info 
  end

  def serialize_character
    {
      links: {image: @info.s3key},
      data: {
        type: "character",
        theme_id: @info.theme_id,
        attributes: {
          name: @info.name,
          quiz: Theme.find(@info.theme_id).name,
          alignment: @info.alignment, 
          character_id: @info.id,
          description: @info.description
        }
      }
    }
  end
  
  def serialize_all_characters
    @info.map do |character|
      {
        links: {image: character.url},
        data: {
          type: "character",
          theme_id: character.theme_id,
          attributes: {
            name: character.name,
            quiz: Theme.find(character.theme_id).name,
            alignment: character.alignment,
            character_id: character.id,
            description: character.description
          }
        }
      }
    end
  end
end
