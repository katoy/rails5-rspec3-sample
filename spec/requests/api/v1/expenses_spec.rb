require 'rails_helper'

RSpec.describe 'Api::v1::Expenses', type: :request do
  describe 'GET /api/v1/expenses' do
    it 'works! (now write some real specs)' do
      get api_v1_expenses_path
      expect(response).to have_http_status(200)
      # json = JSON.parse(response.body)
      # expect(json['expenses']).to match {}
    end
  end
end
