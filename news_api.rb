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
    print_news(headlines_link)
  end

  def entertainment_news
    entertainment_news_link = news_url('entertainment')
    print_news(entertainment_news_link)
  end

  def business_news
    business_news_link = news_url('business')
    print_news(business_news_link)
  end

  def general_news
    general_news_link = news_url('general')
    print_news(general_news_link)
  end

  def science_news
    science_news_link = news_url('science')
    print_news(science_news_link)
  end

  def json_response(body)
    JSON.parse(body)
  end

  def print_news(link)
    headline = RestClient.get(link)
    response = json_response(headline.body)
    last_five_articles = response["articles"].last(5)
    last_five_articles.each_with_index do |article, index|
      puts ' ' *30 + "#{(index+1)}. #{article['title']}"
      puts ' ' * 30 + "-" * 70
      puts ' ' *30 + "#{article['url']}".colorize(:light_blue)
    end
  end
end
