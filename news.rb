
require "open-uri"
require 'json'
require 'news-api'

n = News.new("398565600ab6428980cda6fdf51f13f4")

class NewsApi

  def getsheadlines
    response = open("https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=398565600ab6428980cda6fdf51f13f4").read
    JSON.parse(response)
  end

  def gets_entertainment
    response = open("https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=398565600ab6428980cda6fdf51f13f4").read
    JSON.parse(response)
  end
end

newsapi = NewsApi.new
puts newsapi.getsheadlines
