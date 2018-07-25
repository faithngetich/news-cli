require 'spec_helper'
require 'rest-client'
require 'byebug'

require './news_api'

RSpec.describe 'Different news categories', type: :request do
  describe 'GET /news' do
    it 'will retrieve headlines articles' do
      response = NewsApi.new.get_articles('headlines')
      expect(response.size).to eq(1)
    end
  end
end
