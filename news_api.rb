require 'rest-client'
require 'byebug'
require 'json'
require 'colorize'

class NewsApi
  def headlines
    link = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=' + ENV['API_KEY']
    print_news(link)
  end

  def entertainment_news
    link = 'https://newsapi.org/v2/top-headlines?country=us&category=entertainment&apiKey=' + ENV['API_KEY']
    print_news(link)
  end

  def business_news
    link = 'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=' + ENV['API_KEY']
    print_news(link)
  end

  def general_news
    link = 'https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=' + ENV['API_KEY']
    print_news(link)
  end

  def science_news
    link = 'https://newsapi.org/v2/top-headlines?country=us&category=science&apiKey=' + ENV['API_KEY']
    print_news(link)
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
