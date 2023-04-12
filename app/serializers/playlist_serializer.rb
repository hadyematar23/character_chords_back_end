class PlaylistSerializer

  def generate_playlist(character, playlist, genre)
    {
      links: {
      image: "https://media.npr.org/assets/img/2022/07/22/bcs_609_gl_1005_0864-rt_wide-c958ce0b1e351340c63e2f5823f499afe3fbf840-s1600-c85.webp"
      },
      data: {
        type: "playlist",
        genre: genre,
        id: nil, 
        attributes: {
          character_name: character.name,
          quiz_theme: character.theme.name,
          character_alignment: character.alignment,                             
          song_titles: return_array(playlist)
        }
      }
    }
  end

  def return_array(playlist)
    playlist_content = playlist[:choices].first[:message][:content]
      songs = playlist_content.split("\n").map do |song|
        song.gsub(/^\d+\.\s*/, '').gsub(/\"/, '')
      end
  end
end
