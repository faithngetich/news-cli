require 'colorize'
require_relative '../news_api'
require_relative 'news_options'

class NewsCli
  include NewsOption
  def call
    introduction
    command_helper
    news_categories
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
