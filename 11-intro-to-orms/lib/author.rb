class Author

    attr_accessor :name

    def initialize(name, id=nil)
        @name = name
        @id = id
    end

    def self.create(name) 
        author = Author.new(name)
        sql = <<-SQL 
            INSERT INTO authors (name) values (?)
        SQL

        DB.execute(sql, name)
    end

    def self.all 
        sql = "SELECT * from authors"
        rows = DB.execute(sql)
        authors = rows.map do |row|
            self.make_author_from_db_row(row)
        end
        return authors
    end


    def self.find(id)
        sql = <<-SQL 
            SELECT * FROM authors WHERE id = (?)
        SQL
        row = DB.execute(sql, id)[0]
        return self.make_author_from_db_row(row)
    end

    def self.make_author_from_db_row(row)
        # [2, "Maya Angelou"]
        return Author.new(row[1], row[0])
    end



end