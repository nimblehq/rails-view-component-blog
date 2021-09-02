# frozen_string_literal: true

require 'rails_helper'

describe PostsController, type: :request do
  describe 'GET #index' do
    context 'given no parameters' do
      it 'return a 200 status code' do
        get :index

        expect(response.status).to eq(200)
      end
    end
  end
end
