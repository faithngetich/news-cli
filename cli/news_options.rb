module NewsOption
  def news_categories
    newsapi = NewsApi.new
    user_input = ''
    while user_input != 'exit'
      puts '@~'
      user_input = gets.chomp
      case user_input
      when '1'
        puts 'List of the last 5 headlines news: '.colorize(:green)
        print_news(newsapi.get_articles(''))
      when '2'
        puts 'List of the last 5 entertainment news: '.colorize(:green)
        print_news(newsapi.get_articles('entertainment'))
      when '3'
        puts 'List of the last 5 general news: '.colorize(:green)
        print_news(newsapi.get_articles('general'))
      when '4'
        puts 'List of the last 5 science news: '.colorize(:green)
        print_news(newsapi.get_articles('science'))
      when '5'
        puts 'List of the last 5 business news: '.colorize(:green)
        print_news(newsapi.get_articles('business'))
      when '6'
        command_helper
      when ''
        puts 'Please select a number'.colorize(:red)
      when 'exit'
        puts 'Goodbye'.colorize(:green)
      else
        puts 'You are making this up, type 5 for help. Try Again'.colorize(:red)
      end
    end
  end
end
