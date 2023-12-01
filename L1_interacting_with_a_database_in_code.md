# [Interacting with a Database in Code](https://launchschool.com/lessons/10f7102d/assignments)

## 1	[What this Course Covers](https://launchschool.com/lessons/10f7102d/assignments/9b9de296)

- How to interact with an SQL database via a ruby program.
- Using a `pg` gem to interact with a POstgreSQL database.
- Using a lot of HTML and CSS
- The assessment covers RB175 also.

## 2	[Getting Started](https://launchschool.com/lessons/10f7102d/assignments/7ac0fce8)

- We'll learn:
  - Connecting to PostgreSQL from Ruby.
  - Using the `pg` gem to perform queries.
  - buidling dynamic SQL statements safely.
  - structuring small command-line applications
  - Optimize queries made from Ruby programs
 
- Install pg gem
- Install Pry gem

## 3	[What to Focus On](https://launchschool.com/lessons/10f7102d/assignments/61966257)

- Observe the progresion of steps from high-level requirements to low-level implementation details.
  - Think about how project requirements affect what SQL is written later.
- Understand how to dynamically generate SQL.
  - When we make SQL queries from Ruby there are inherent risks.
- Focus on the database and not the application.
  - We'll build a command line app here. It's nice, but not the thing we're learnign to do. Focus more on the database interaction. That's the nugget.

## 4	[Executing SQL Statements from Ruby](https://launchschool.com/lessons/10f7102d/assignments/003e5e30)

- video [13:29]
- Connecting to a SQL db from ruby with `pg`.
  - Install pg.
  - `db = PG.connect(dbname: "films")`
  - `show-method PG.connect`
  - `result = db.exec "SELECT 1"
  - `cd result`
  - `ls`
### Tuple
  - [4:20] A tuple is a Ruby-hash rather than alist of values (which is the more common meaning of 'tuple')
  - `result = db.exec "SELECT * FROM films;"`
    - (never pass multiple queries to exec at a time)
  - `result.values`
  - `show-method result.fields`
  - `result.values.size` tells you how many columns there are, but so does `result.ntuples`

``sql
result.each do |tuple|
  puts "#{tuple["title"]} came out in #{tuple["year"]}"
end
  ```

```sql
result.each_row do |row|
  puts "#{row[1]} came out in #{row[2]}"
end
```

- Note that the results are all strings. Later we will look at Type-casting data into different types.
- `result.field_values("duration")` is the same as `result.column_values(4)`

Review of useful commands:

|Command|	What it does|
| :--- | :--- |
|PG.connect(dbname: "a_database")	|Create a new PG::Connection object|
|connection.exec("SELECT * FROM table_name")	|execute a SQL query and return a PG::Result object|
|result.values|	Returns an Array of Arrays containing values for each row in result|
|result.fields|	Returns the names of columns as an Array of Strings|
|result.ntuples|	Returns the number of rows in result|
|result.each(&block)|	Yields a Hash of column names and values to the block for each row in result|
|result.each_row(&block)|	Yields an Array of values to the block for each row in result|
|result[index]|	Returns a Hash of values for row at index in result|
|result.field_values(column)|	Returns an Array of values for column, one for each row in result|
|result.column_values(index)|	Returns an Array of values for column at index, one for each row in result|

## 5 [Project Demo](https://launchschool.com/lessons/10f7102d/assignments/1ca9b617)

- Expenses app
- Add an expense:
  -  `./expense add 4.56 Coffee`
  -   `./expense add 9.23 "Lunch with client"`

## 6	[Project Setup](https://launchschool.com/lessons/10f7102d/assignments/2090528a)

## 7	[Database Design](https://launchschool.com/lessons/10f7102d/assignments/796f407c)

## 8	[Listing Expenses](https://launchschool.com/lessons/10f7102d/assignments/772b1386)	

## 9	[Displaying Help](https://launchschool.com/lessons/10f7102d/assignments/fa215da5)

- 

## 10 [Adding Expenses](https://launchschool.com/lessons/10f7102d/assignments/c54b083f)



## 11	[Handling Parameters Safely](https://launchschool.com/lessons/10f7102d/assignments/6877d345)



## 12 [Code Structure](https://launchschool.com/lessons/10f7102d/assignments/bfc4ac83)


## 13	[Searching Expenses](https://launchschool.com/lessons/10f7102d/assignments/e4a48665)


## 14	[Deleting Expenses](https://launchschool.com/lessons/10f7102d/assignments/59094a8d)


## 15	[Clearing Expenses](https://launchschool.com/lessons/10f7102d/assignments/78571424)


## 16	[Counting and Totaling Expenses](https://launchschool.com/lessons/10f7102d/assignments/53f46b39)



## 17	[Creating the Schema Automatically](https://launchschool.com/lessons/10f7102d/assignments/99b9d97f)


## 18	[Summary](https://launchschool.com/lessons/10f7102d/assignments/e40ff3e1)
