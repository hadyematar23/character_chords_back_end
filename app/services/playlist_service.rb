class PlaylistService

  def generate_playlists(info) 
        payload = {
      "model": "gpt-3.5-turbo",
      "messages": [
        {
          "role": "user",
          "content": "Generate 10 songs based on my DnD Alignment, a theme, and style of music. I would like these to be real songs that are on Spotify. Avoid any audiobooks, movies, documentaries, or TV shows. I would like these to be formatted like an array of strings (ruby). Theme: #{Theme.find(info[:theme_id]).name}, Sign: #{Character.find(info[:character_id]).alignment}, Style of Music: #{info[:genre]}, Example: ['Song1', 'Song2', 'Song3', 'Song4']"
        }
      ],
      "temperature": 0.6,
      "max_tokens": 150
    }
    get_url(payload)
  end

  def get_url(payload)
    response = connection.post do |req|
      req.headers['Content-Type'] = 'application/json'
      req.headers['Authorization'] = "Bearer #{ENV['Open_AI']}"
      req.body = payload.to_json
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def connection 
    Faraday.new(url: "https://api.openai.com/v1/chat/completions")
  end
end