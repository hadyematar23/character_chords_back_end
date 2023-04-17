require 'rails_helper'

RSpec.describe Theme, type: :model do
  describe 'associations' do
    it { should have_many(:questions) }
    it { should have_many(:characters) }
  end
end