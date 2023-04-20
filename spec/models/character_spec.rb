require 'rails_helper'

RSpec.describe Character, type: :model do
  describe 'associations' do
    it { should belong_to :theme }
  end

  describe 'validations' do
    it { should validate_presence_of(:s3key) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:theme) }
    it { should define_enum_for(:alignment) }
  end

  describe '.matching_alignment' do
    let!(:theme) { create(:theme) }
    let!(:character_1) { create(:character, theme: theme, good_min: 0.1, good_max: 0.5, lawful_min: 0.1, lawful_max: 0.5) }
    let!(:character_2) { create(:character, theme: theme, good_min: 0.6, good_max: 0.9, lawful_min: 0.6, lawful_max: 0.9) }

    context 'when there is a matching character' do
      it 'returns the matching character' do
        result = theme.characters.matching_alignment(0.3, 0.3)
        expect(result).to contain_exactly(character_1)
      end
    end

    context 'when there is no matching character' do
      it 'returns an empty result' do
        result = theme.characters.matching_alignment(0.05, 0.05)
        expect(result).to be_empty
      end
    end    
  end
end