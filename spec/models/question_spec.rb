require 'rails_helper'

RSpec.describe Question, type: :model do
  it 'has a valid factory' do
    expect(build(:question)).to be_valid
  end

  describe 'associations' do
    it { should belong_to(:theme) }
  end

  describe "enum" do
    it 'charts the alignment' do
      should define_enum_for(:good_evil_chaotic_lawful)
        .with_values(good_evil: 0, chaotic_lawful: 1)
    end
  end
end