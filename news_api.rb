require 'rest-client' 
require 'byebug'
require 'json'
require 'colorize'
require './news'

class NewsApi
  include News

  def get_articles(category)
    get_last_5_articles(category)
  end
  
end
