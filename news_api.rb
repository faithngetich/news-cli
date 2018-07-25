require './news'

class NewsApi
  include News

  def get_articles(category)
    get_last_5_articles(category)
  end
  
end
