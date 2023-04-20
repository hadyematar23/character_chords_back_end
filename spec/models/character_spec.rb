require 'rails_helper'

RSpec.describe Character, type: :model do
  describe 'associations' do
    it { should belong_to :theme }
  end

  describe 'validations' do
    it { should validate_presence_of(:s3key) }
    it { should validate_presence_of(:name) }
    it { should define_enum_for(:alignment) }
  end
end
