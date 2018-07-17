require 'rest-client' 
require 'byebug'
require 'json'
require 'colorize'

class NewsApi
  def news_url(category)
    base_url = 'https://newsapi.org/v2/top-headlines?country=us'
    base_url + '&category=' + category + '&apiKey=' + ENV['API_KEY']
  end

  def headlines
    headlines_link = news_url('')
    headline = RestClient.get(headlines_link)
    json_response(headline.body)["articles"].last(5)
  end

  def entertainment_news
    entertainment_news_link = news_url('entertainment')
    entertainment_news = RestClient.get(entertainment_news_link)
    json_response(entertainment_news.body)["articles"].last(5)
  end

  def business_news
    business_news_link = news_url('business')
    business = RestClient.get(business_news_link)
    json_response(business.body)["articles"].last(5)
  end

  def general_news
    general_news_link = news_url('general')
    general = RestClient.get(general_news_link)
    json_response(general.body)["articles"].last(5)
  end

  def science_news
    science_news_link = news_url('science')
    science_news = RestClient.get(science_news_link)
    json_response(science_news.body)["articles"].last(5)
  end

  def json_response(body)
    JSON.parse(body)
  end
end
