class ThemeSerializer
  def initialize(themes)
    @themes = themes
  end

  def serialize_themes
    {
      data: @themes.map do |theme|
        {
          type: "theme",
          id: theme.id,
          attributes: {
            name: theme.name,
            image: theme.image_link,
            title: theme.title
          }
        }
      end
    }
  end
end
