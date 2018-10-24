sqlite3 pets_database.db #creates pets database 

CREATE TABLE cats ( 
              id INTEGER PRIMARY KEY,
              name TEXT,
              age INTEGER,
              breed TEXT 
              ); #create cats table along with id, name, age, breed
              
INSERT INTO cats (name, age, breed) VALUES ("Maru", 3, "Scottish Fold"); #We use the INSERT INTO command, followed by the name of the table to which we want to add data. Then, in parentheses, we put the column names that we will be filling with data. This is followed by the VALUES keyword, which is accompanied by a parentheses enclosed list of the values that correspond to each column name. Important: Note that we didn't specify the "id" column name or value. Since we created the cats table with an "id" column whose type is INTEGER PRIMARY KEY, we don't have to specify the id column values when we insert data. Primary Key columns are auto-incrementing. As long as you have defined an id column with a data type of INTEGER PRIMARY KEY, a newly inserted row's id column will be automatically given the correct value.

#to add values via text editor vs command line, create the file and save it and enter the following into the terminal:
sqlite3 pets_database.db < 01_insert_cats_into_cats_tablel.sql 
#NOTE: this is a bash command 

#Now that we've inserted some data into our cats table, we likely want to read that data. This is where the SELECT statement comes in. We use it to retrieve database data, or rows. 
SELECT [names of columns we are going to select] FROM [table we are selecting from]; #for this table see below:
SELECT id, name, age, breed FROM cats;

#
A faster way to get data from every column in our table is to use a special selector, known commonly as the 'wildcard', * selector. The * selector means: "Give me all the data from all the columns for all of the cats" Using the wildcard, we can SELECT all the data from all of the columns in the cats table like this:
SELECT * FROM cats;

#for certain column from a table, use the following: 
SELECT name FROM cats;
#or 
SELECT name, age FROM cats;

#Top-Tip: If you have duplicate data (for example, two cats with the same name) and you only want to select unique values, you can use the DISTINCT keyword. For example:
SELECT DISTINCT name FROM cats;

#using WHRERE clause to retrieve a specific table row 
SELECT * FROM [table name] WHERE [column name] = [some value];
sqlite> SELECT * FROM cats WHERE name = "Maru";

#We can also use comparison operators, like < or > to select specific data. Let's give it a shot. Use the following statement to select the young cats:
SELECT * FROM cats WHERE age < 2;

#to update or change data in the table rows, use the UPDATE keyword
UPDATE [table name] SET [column name] = [new value] WHERE [column name] = [value];
#uses a WHERE clause to grab the row you want to update.
sqlite> UPDATE cats SET name = "Hana" WHERE name = "Hannah";

#to delete table rows use DELETE 
DELETE FROM [table name] WHERE [column name] = [value];
sqlite> DELETE FROM cats WHERE id = 2;
#Notice that this time we selected the row to delete using the Primary Key column. Remember that every table row has a Primary Key column that is unique. Lil' Bub was the second row in the database and thus had an id of 2.