class CharacterSerializer

  def initialize(info)
    @info = info 
  end

  def serialize_character
    require 'pry'; binding.pry
    {
      links: {image: @info.url},
        data: {
        type: "character",
        theme_id: @info.theme_id,
        attributes: {
          name: @info.name,
          quiz: Theme.find(@info.theme_id).name,
          alignment: @info.alignment 
        }
      }
    }
  end
end
