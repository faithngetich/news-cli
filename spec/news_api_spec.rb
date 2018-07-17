require 'spec_helper'
require 'rest-client'
require 'byebug'

require './news_api'

RSpec.describe 'Different news categories', type: :request do
  describe 'GET /news' do
    it 'will retrieve headlines articles' do
      response = NewsApi.new.headlines
      expect(response.size).to eq(1)
    end

    it 'will retrieve headlines title' do
      response = NewsApi.new.headlines
      expect(response[0]['title']).to eq('VERITAS')
    end

    it 'will retrieve general articles' do
      response = NewsApi.new.general_news
      expect(response.size).to eq(1)
    end

    it 'will retrieve general title' do
      response = NewsApi.new.general_news
      expect(response[0]['title']).to eq('VERITAS')
    end

    it 'will retrieve entertainment articles' do
      response = NewsApi.new.entertainment_news
      expect(response.size).to eq(1)
    end

    it 'will retrieve entertainment news title' do
      response = NewsApi.new.entertainment_news
      expect(response[0]['title']).to eq('VERITAS')
    end

    it 'will retrieve science articles' do
      response = NewsApi.new.science_news
      expect(response.size).to eq(1)
    end

    it 'will retrieve science news title' do
      response = NewsApi.new.science_news
      expect(response[0]['title']).to eq('VERITAS')
    end

    it 'will retrieve business articles' do
      response = NewsApi.new.business_news
      expect(response.size).to eq(1)
    end

    it 'will retrieve business news title' do
      response = NewsApi.new.business_news
      expect(response[0]['title']).to eq('VERITAS')
    end
  end
end
