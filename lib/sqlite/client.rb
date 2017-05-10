require 'sqlite3'

db = SQLite3::Database.new('test.db')

rows = db.execute <<-SQL 
          create table doggies(
           id int,
           name varchar(30)
         );
        SQL

puts rows
puts rows.inspect