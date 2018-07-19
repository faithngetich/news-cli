module RetrieveNews
  def json_response(body)
    JSON.parse(body)
  end
  
  def get_last_5_articles(category)
    payload = { params: news_params(category)}
    response = RestClient.get(base_url, payload)
    json_response(response.body)['articles'].last(5)
  end

  private

  def base_url
    'https://newsapi.org/v2/top-headlines'
  end

  def news_params(category, country = 'us')
    { country: country,
      category: category,
      apiKey: ENV['API_KEY'] }
  end

end