require 'rest-client'
require 'byebug'
require 'json'

def json_response(body)
  JSON.parse(body)
end

class NewsApi
  def getsheadlines
    headline = (RestClient.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=' + ENV['API_KEY']))
    response = json_response(headline.body)
    response['articles']
  end

  def get_entertainment_news
    headline = RestClient.get('https://newsapi.org/v2/top-headlines?country=us&category=entertainment&apiKey=' + ENV['API_KEY'])
    response = json_response(headline.body)
    response['articles']
  end

  def get_business_news
    headline = RestClient.get('https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=' + ENV['API_KEY'])
    response = json_response(headline.body)
    response['articles']
  end

  def get_general_news
    headline = RestClient.get('https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=' + ENV['API_KEY'])
    response = json_response(headline.body)
    response['articles']
  end

  def get_science_news
    headline = RestClient.get('https://newsapi.org/v2/top-headlines?country=us&category=science&apiKey=' + ENV['API_KEY'])
    response = json_response(headline.body)
    response['articles']
  end
end

newsapi = NewsApi.new
# j = newsapi.getsheadlines["articles"]


puts newsapi.getsheadlines