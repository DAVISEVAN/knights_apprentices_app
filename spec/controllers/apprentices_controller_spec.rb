require 'rails_helper'

RSpec.describe ApprenticesController, type: :controller do
  let(:knight) { FactoryBot.create(:knight) }
  let(:valid_attributes) {
    { name: 'Test Apprentice', is_knighted: false, age: 18, knight_id: knight.id }
  }

  let(:invalid_attributes) {
    { name: nil }
  }

  describe "GET #index" do
    it "returns a success response" do
      Apprentice.create! valid_attributes
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      apprentice = Apprentice.create! valid_attributes
      get :show, params: { id: apprentice.to_param }
      expect(response).to be_successful
    end
  end
end
