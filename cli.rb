require "thor"

class MyNewsCLI < Thor
  desc "hello NAME", "say hello to NAME"
  def hello(name)
    puts "Hello #{name}"
  end
end

MyNewsCLI.start(ARGV)
