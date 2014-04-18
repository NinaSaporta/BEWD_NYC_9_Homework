require 'json'
require 'rest-client'
require 'pry'

require_relative 'lib/bookinfo'

#Starts new search, calls API method (search_book_by_name) and displays results

def input_title
  puts "Please enter a book title to see information and a preview"
  book = gets.to_s
  results = search_book_by_name(book)
  results["items"].each do|item|
  book = Bookinfo.new item["volumeInfo"]["title"], item["volumeInfo"]["authors"], item["volumeInfo"]["description"]
  puts  "\n""The book #{book.title} by #{book.authors} is about #{book.description}" "\n" "-------------------------------------""\n" 
  end
  next_move
end

#Function to run API

def search_book_by_name(book)
    url = "https://www.googleapis.com/books/v1/volumes?q=#{URI::encode(book)}&key=#{get_access_key}"
	res = JSON.load(RestClient.get(url))
    return res
end

#Google API Access Key.  In a separate method to make it easier to swap out if needed

def get_access_key
  return "AIzaSyBUKwL2ClTAaKwn1csWuOOhNgKj5kv3QeA"
end

#Prompts the user to enter a new book or end program

def next_move
  puts "Want to check out another book (y/n)?"
  next_move = gets.strip
  if next_move == "y"
    input_title
  elsif next_move == "n"
    puts "We hope you found a good book!  Bye!"
  else
    puts "Please enter 'y' or 'n' to let us know if you want to check out another book or not!"
  end
end

puts "Finding the right book to read can be hard! Not anymore. Welcome to the Google Books Preview Generator!  Feel free to search a book by its title and you'll be able to read a description about the book before you go out and buy it!"
input_title


