class PlaylistService

  def generate_playlists(info) 
    payload = {
      "model": "gpt-3.5-turbo",
      "messages": [
        {
          "role": "user",
          "content": 
          "Character: #{Character.find(info[:character_id]).name}
          Alignment: #{Character.find(info[:character_id]).alignment}
          Theme: #{Theme.find(info[:theme_id]).name}
          Style of Music: #{info[:genre]}

          I am #{Character.find(info[:character_id]).name}. I am a #{Character.find(info[:character_id]).alignment} person on the DnD alignment chart. Generate a playlist that a person like me would listen to. Only pick one song referencing me or my world, make the rest things I would listen to.  I would like these to be real songs that are on Spotify. The phrase NEXT_SONG should be between each song. 
          Please format the output as an array of strings in Ruby, like this and without any text or numbers before or after in your response: Song1 NEXT_SONG Song2 NEXT_SONG Song3 NEXT_SONG Song4 NEXT_SONG Song5 NEXT_SONG Song6 NEXT_SONG Song7. Exactly 10 songs. No artist names."
        }
      ],
      "temperature": 0.7,
      "max_tokens": 1000
    }
    get_url(payload)
  end
  
  private

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