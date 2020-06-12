require 'bundler'
Bundler.require

require_relative '../lib/book.rb'
require_relative '../lib/author.rb'


DB = SQLite3::Database.new('db/library.db')


# module SQLite3

#     class Database

#         def initialize(db_location)
#             @db_location = db_location
#         end

#     end
# end