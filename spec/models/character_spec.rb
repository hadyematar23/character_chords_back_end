require 'rails_helper'

RSpec.describe Character, type: :model do
  describe 'associations' do
    it { should belong_to :theme }
    it { should have_one_attached(:image) }
  end

  describe 'validations' do
    it { should validate_presence_of(:s3key) }
    it { should validate_presence_of(:name) }
    it { should define_enum_for(:alignment) }
    it 'validates the presence of an attached image' do
      character = build(:character, image: nil, s3key: 'test')
      expect(character).not_to be_valid
      expect(character.errors[:image]).to include("can't be blank")
    end
  end
end
