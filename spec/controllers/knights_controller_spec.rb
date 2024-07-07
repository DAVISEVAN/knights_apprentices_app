require 'rails_helper'

RSpec.describe KnightsController, type: :controller do
  let(:valid_attributes) {
    { name: 'Sir Test', is_active: true, number_of_quests: 5 }
  }

  let(:invalid_attributes) {
    { name: nil }
  }

  describe "GET #index" do
    it "returns a success response" do
      knight = FactoryBot.create(:knight)
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      knight = FactoryBot.create(:knight)
      get :show, params: { id: knight.to_param }
      expect(response).to be_successful
    end
  end
end
