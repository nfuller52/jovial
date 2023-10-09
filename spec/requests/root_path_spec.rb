# frozen_string_literal: true

require 'rails_helper'

describe 'Root page' do
  describe 'GET /' do
    it 'returns http success' do
      get '/'

      expect(response).to have_http_status(:success)
    end
  end
end
