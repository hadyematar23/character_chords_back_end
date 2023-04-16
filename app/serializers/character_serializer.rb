class CharacterSerializer

  def initialize(info)
    @info = info 
  end

  def serialize_character
    {
      links: {image: @info.url},
      data: {
        type: "character",
        theme_id: @info.theme_id,
        attributes: {
          name: @info.name,
          quiz: Theme.find(@info.theme_id).name,
          alignment: @info.alignment, 
          character_id: @info.id
        }
      }
    }
  end
  
  def serialize_all_characters
    {
      links: {image: @info[0].url},
      data: @info.map do |character|
        {
        type: "character",
        theme_id: character.theme_id,
        attributes: {
          name: character.name,
          quiz: Theme.find(character.theme_id).name,
          alignment: character.alignment, 
          character_id: character.id
        }
      }
    end
    }
  end
end
