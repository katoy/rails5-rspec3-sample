require 'rails_helper'

RSpec.describe Api::V1::ExpensesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/api/v1/expenses').to route_to('api/v1/expenses#index', format: 'json')
    end

    it 'routes to #show' do
      expect(get: '/api/v1/expenses/2017-11-01').to route_to('api/v1/expenses#show', date: '2017-11-01', format: 'json')
    end

    it 'routes to #create' do
      expect(post: '/api/v1/expenses').to route_to('api/v1/expenses#create', format: 'json')
    end
  end
end
