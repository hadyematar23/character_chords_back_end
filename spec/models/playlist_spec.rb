require 'rails_helper'

RSpec.describe Playlist, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:genre) }
    it { should validate_presence_of(:character) }
    it { should validate_presence_of(:alignment) }
    it { should validate_presence_of(:songs) }
    
    it 'validates that songs is an array' do
      playlist = Playlist.new(
        genre: 'Rock',
        character: 'John',
        alignment: 'Lawful Good',
        songs: ['array', 'of', 'songs']
      )
      expect(playlist).to be_valid
    end
  end
end
