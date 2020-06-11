1.  Write the SQL to create tables for Books (id, title, author_id) and Authors (id, name)

<<-SQL
    CREATE TABLE IF NOT EXISTS books(
        id integer PRIMARY KEY,
        title TEXT,
        author_id INTEGER
SQL

<<-SQL
    CREATE TABLE IF NOT EXISTS authors(
        id integer PRIMARY KEY,
        name TEXT,
SQL

2.  Write the SQL to get all Authors

<<-SQL
    SELECT * FROM AUTHORS
SQL

3.  Write the SQL to create a new author, given the author's name

<<-SQL
    INSERT INTO authors (name) VALUES (?)
SQL

4.  Write the SQL to get all Books by a given author, given the author's id

<<-SQL 
    SELECT * FROM books WHERE author_id = (?)
SQL

5.  Write the SQL to get all Books by a given author, given the author's name

<<-SQL 
    SELECT * FROM authors WHERE name = (?)
SQL

6.  Write the SQL to update a Book's title
<<-SQL 
    UPDATE books set title = ? WHERE id = ?
SQL