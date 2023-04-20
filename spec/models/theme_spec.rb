require 'rails_helper'

RSpec.describe Theme, type: :model do
  describe 'associations' do
    it { should have_many(:questions) }
    it { should have_many(:characters) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:image_link) }
    it { should validate_presence_of(:s3_key) }
  end
end