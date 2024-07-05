require 'rails_helper'

RSpec.describe Apprentice, type: :model do
  it { should belong_to(:knight) }
  it { should validate_presence_of(:name)}

  it "is valid with valid attributes" do
    apprentice = FactoryBot.create(:apprentice)
    expect(apprentice).to be_valid
  end

  it "is not valid without a name" do
    apprentice = FactoryBot.build(:apprentice, name: nil)
    expect(apprentice).to_not be_valid
  end
end
