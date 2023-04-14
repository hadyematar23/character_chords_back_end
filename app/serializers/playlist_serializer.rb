class PlaylistSerializer

  def generate_playlist(character, playlist, genre)
    {
      links: {
      image: character.url
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
    songs = playlist_content.split('NEXT_SONG').map(&:strip)
  end

  def render_playlist(playlist)
    found_character = Character.find_by(name: playlist.character)
    {
      links: {
      image: "https://media.npr.org/assets/img/2022/07/22/bcs_609_gl_1005_0864-rt_wide-c958ce0b1e351340c63e2f5823f499afe3fbf840-s1600-c85.webp"
      },
      data: {
        type: "playlist",
        genre: playlist.genre,
        id: playlist.id, 
        attributes: {
          character_name: playlist.character,
          quiz_theme: found_character.theme.name,
          character_alignment: playlist.alignment,                             
          song_titles: playlist.songs
        }
      }
    }
  end
end
