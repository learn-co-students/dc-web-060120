require 'rest-client'
require 'json'
require 'pry'

GOOGLE_BOOKS_API_BASE_URL = "https://www.googleapis.com/books/v1/volumes?q="



# url = "https://www.reddit.com/.json"

# response = RestClient.get(GOOGLE_BOOKS_API_BASE_URL)

# json = JSON.parse(response)

# binding.pry

# json.each do |article|
#     print article[data][:title]
# end


# welcome the user 
def welcome
    puts "Welcome to our Book Searcher Program"
end

# get some search terms
def get_search_terms
    puts "What would you like to search for?"
    search_terms = gets.chomp()
end

def format_search_terms(search_terms)
    search_terms.downcase.gsub(" ", "+")
end

def build_url(search_terms)
# build the url 
    return GOOGLE_BOOKS_API_BASE_URL + search_terms
end

# make a request to Google Books API
def make_request(url)
    response = RestClient.get(url)
    return response
end

# parse response into JSON
def convert_to_json(response)
    JSON.parse(response)
end

# print out first ten titles and authors
def get_authors_and_titles(json)
    # [{authors: ["someone", "someone else"], title: ["My book"]}]
    # json["items"][0]["volumeInfo"]["title"]
    # binding.pry
    first_ten_book_info = json["items"][0..9].map do |book_info|
        title = book_info["volumeInfo"]["title"]
        authors = book_info["volumeInfo"]["authors"]
        {authors: authors, title: title}
    end
    return first_ten_book_info
end

def print_book_info(book_info)
    display_string = "#{book_info[:title]}"
    if !book_info[:authors].nil?
        display_string += " by #{book_info[:authors].join(" & ")}"
    end
    puts display_string
    puts "**********************"
end


def run
    welcome 
    search_terms = get_search_terms
    formatted_search_terms = format_search_terms(search_terms)
    url = build_url(formatted_search_terms)
    response = make_request(url)
    json = convert_to_json(response)
    book_hash = get_authors_and_titles(json)
    book_hash.each do |book|
        print_book_info(book)
    end

end

run()









