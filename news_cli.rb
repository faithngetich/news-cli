require_relative './news_api'
require 'colorize'

class NewsCli
  def call
    newsapi = NewsApi.new
    introduction
    command_helper
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

  def introduction
    puts 'NEWS CLI '
    puts '==========='
    puts 'Here are the list of commands you can use, enter a number'
    puts '=========' * 5
  end

  def command_helper
    puts '1.) list headlines # lists top headlines'
    puts '2.) list entertainment # lists entertainment news'
    puts '3.) list general# lists general news'
    puts '4.) list science # lists science news'
    puts '5.) list business # lists business news'
    puts '6.) list all the commands'
    puts 'Type the word exit to quit'
  end

  def print_news(last_five_articles)
    last_five_articles.each_with_index do |article, index|
      puts ' ' * 30 + "#{(index+1)}. #{article['title']}"
      puts ' ' * 30 + "-" * 70
      puts ' ' * 30 + "#{article['url']}".colorize(:light_blue)
    end
  end
end

call_cli = NewsCli.new
call_cli.call
