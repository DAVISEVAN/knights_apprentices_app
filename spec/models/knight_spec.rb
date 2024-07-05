require 'rails_helper'

RSpec.describe Knight, type: :model do
  it { should have_many(:apprentices).dependent(:destroy) }
  it { should validate_presence_of(:name)}

  it "is valid with valid attributes" do
    knight = FactoryBot.create(:knight)
    expect(knight).to be_valid
  end

  it "is not valid without a name" do
    knight = FactoryBot.build(:knight, name: nil)
    expect(knight).to_not be_valid
  end
end
