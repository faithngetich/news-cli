require 'spec_helper'
require 'rest-client'
require 'byebug'

RSpec.describe "Widget management", :type => :request do
  describe 'GET /news' do

    it 'will retrieve news articles' do
      response_body = {
        status: "ok",
        totalResults: 1,
        articles: [
          {
            source: {
              id: "VERITAS",
              name: "Phys.org"
            },
            author: "VERITAS",
            title: "VERITAS",
            description: "description",
            url: "https://phys.org/news/2018-07-veritas-critical-piece-neutrino-discovery.html",
            urlToImage: "https://3c1703fe8d.site.internapcdn.net/newman/gfx/news/2018/veritassuppl.jpg",
            publishedAt: "2018-07-12T15:00:30Z"
          }
        ]
      }
      stub_request(:get, 'https://newsapi.org/v2/top-headlines?country=us&apiKey=' + ENV['API_KEY']).
        to_return(body: JSON.generate(response_body), status: 200)
      response = RestClient.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=' + ENV['API_KEY'])
      expect(JSON.parse(response.body, symbolize_names: true)).to eq(response_body)
    end

    context 'when you have 10 records' do
    end
  end
end
