require 'rails_helper'

RSpec.describe Playlist, type: :model do
  describe 'validations' do
    it { should validate_length_of(:genre).is_at_most(36) }
  end
end