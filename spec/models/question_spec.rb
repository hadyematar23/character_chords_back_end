require 'rails_helper'

RSpec.describe Question, type: :model do
  it 'has a valid factory' do
    expect(build(:question)).to be_valid
  end

  describe 'validations' do
    it { should validate_presence_of(:question) }
    it { should validate_presence_of(:answer_1) }
    it { should validate_presence_of(:answer_2) }
    it { should validate_presence_of(:answer_3) }
    it { should validate_presence_of(:answer_4) }
    it { should validate_presence_of(:answer_5) }
    it { should validate_presence_of(:good_evil_chaotic_lawful) }
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