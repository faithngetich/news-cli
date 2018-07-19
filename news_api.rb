require 'rest-client' 
require 'byebug'
require 'json'
require 'colorize'
require './retrieve_news'

class NewsApi
  include RetrieveNews

  def headlines
    get_last_5_articles('')
  end

  def entertainment_news
    get_last_5_articles('entertainment')
  end

  def business_news
    get_last_5_articles('business')
  end

  def general_news
    get_last_5_articles('general')
  end

  def science_news
    get_last_5_articles('science')
  end
end
