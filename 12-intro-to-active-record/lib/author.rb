class Author < ActiveRecord::Base
    
    def self.create(name: nil, penname: nil)
        puts "New author has been created"

        super({name: name, penname: penname})

    end
end




# module ActiveRecord

#     class Base

#         def self.all 
#             # retrieves all from database
#         end

#         def self.create
#             # creates the object and saves to db
#         end

#     end

# end