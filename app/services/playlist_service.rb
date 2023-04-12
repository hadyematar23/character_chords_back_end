class PlaylistService

  def generate_playlists(info) 
    get_url()
  end

  def get_url(url, payload)
    response = connection.get(url) do |req|
      req.headers['Content-Type'] = 'application/json'
      req.headers['Authorization'] = "Bearer #{ENV['Open_AI']}"
      req.body - payload.to_json
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def connection 
    Faraday.new(url: "https://api.openai.com/v1/chat/completions")|
    end
  end

end