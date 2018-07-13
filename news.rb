require 'rubygems'
require 'httparty'

class NewsApi
  include HTTParty
  base_uri "newsapi.org/"

  def getsheadlines
    self.class.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=398565600ab6428980cda6fdf51f13f4')
  end

  def get_entertainment_news
    self.class.get('https://newsapi.org/v2/top-headlines?country=us&category=entertainment&apiKey=398565600ab6428980cda6fdf51f13f4')
  end

  def get_business_news
    self.class.get('https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=398565600ab6428980cda6fdf51f13f4')
  end

  def get_general_news
    self.class.get('https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=398565600ab6428980cda6fdf51f13f4')
  end

  def get_science_news
    self.class.get('https://newsapi.org/v2/top-headlines?country=us&category=science&apiKey=398565600ab6428980cda6fdf51f13f4')
  end

  
end

newsapi = NewsApi.new
puts newsapi.getsheadlines
puts '======================================'
puts '======================================'
puts '======================================'
puts '======================================'
puts '======================================'
puts newsapi.get_general_news
puts '======================================'
puts '======================================'
puts '======================================'
puts '======================================'
puts '======================================'
puts '======================================'

puts newsapi.get_business_news
puts '======================================'
puts '======================================'
puts '======================================'
puts '======================================'
puts '======================================'
puts '======================================'
puts newsapi.get_science_news
puts '======================================'
puts '======================================'
puts '======================================'
