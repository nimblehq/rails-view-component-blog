# frozen_string_literal: true

require 'rails_helper'

describe ArticlesController, type: :request do
  describe 'GET #index' do
    context 'given no parameter' do
      it 'returns a 200 status code' do
        sign_in Fabricate(:user)

        get :index

        expect(response.status).to eq(200)
      end
    end
  end
end
