[![Build Status](https://travis-ci.org/faithngetich/news-cli.svg?branch=master)](https://travis-ci.org/faithngetich/news-cli)

# News-cli

A command line application that lists the title and url of the last 5 news items in a category of your choice. You have 4 options.

1.) list headlines # lists top headlines

2.) list entertainment # lists entertainment news

3.) list general# lists general news

4.) list science # lists science news

## Example

List of the last 5 general news:
``` 
1. Third fox
--------------------
https://www.nola.com

3. Faith Kenyans
---------------------
https://www.fsith.com

3. Obama urges Kenyans
---------------------
https://www.reuters.com

4. Baby dies from 'lsay
---------------------
https://www.washingtonpost.com

5. Woman survives a week
----------------------
https://www.cbsnews.com
```
    
    
 
 ## Installation.
 
 Clone the Repo in a folder of your choice
 
 - $`git clone https://github.com/faithngetich/news-cli.git`
 
 Navigate to the root folder.
 
 - $`cd news-cli`
 
 Install gems required locally.
 
 - $`bundle`
 
 
  ## Api registration

 To run this app, you will need an API_KEY 
 
 Visit https://newsapi.org/ and signup to get an API key.
 
 
 ## Running the program
 Create a `.env` file on your terminal and add the API key in the file.
 Copy the line below and remember to replace 'API_KEY' with your actual API key .
 
 - `$ echo export API_KEY='API_KEY' > .env`
 
 Add your .env file to your .gitignore file.
 
 - `.env`
 
 Run the cli file
 
 - $`ruby news_cli.rb` 
 
 - Run $`1` for the top headlines caterogry
 
 - Run $`2` for the entertainment caterogry
 
 - Run $`3` for the general caterogry
 
 - Run $`4` for the science caterogry
 
 - Run $`5` to list all the commands
 
 
 ## Running Tests
 This tests that you can get different news categories
 
 Run
 - $ `bundle exec rspec`
 
 
