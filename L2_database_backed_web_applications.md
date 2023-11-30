# [Database backed Web Applications](https://launchschool.com/lessons/421e2d1e/assignments)

## 1	[Getting Started](https://launchschool.com/lessons/421e2d1e/assignments/196569f0)
## 2	[What to Focus On](https://launchschool.com/lessons/421e2d1e/assignments/1cc04e67)
## 3	[Project Overview](https://launchschool.com/lessons/421e2d1e/assignments/e8c01dbf)
## 4	[Extracting Session Manipulation Code](https://launchschool.com/lessons/421e2d1e/assignments/0ff36959)
## 5	[Designing a Schema](https://launchschool.com/lessons/421e2d1e/assignments/e3e8c87e)
## 6	[Setting up a Database Connection](https://launchschool.com/lessons/421e2d1e/assignments/a0591f9d)

- update `all_lists` method

## 7	[Executing and Logging Database Queries](https://launchschool.com/lessons/421e2d1e/assignments/d7a23509)

- We try to load single todo lists from the index page.
- `find_list` method.
- print list id when searching for it.
- `query` method as a wrapper.
- Sinatra's  logging application to make our output look like standard Sinatra output.

## 8	[Loading Records From the Database](https://launchschool.com/lessons/421e2d1e/assignments/c7a670dc)

- video [1 min]
- Fleshing out missing functionality
  - `all_lists` returns an empty array. We want to return an array of hashes.

## 9	[Solving the Reloading Problem](https://launchschool.com/lessons/421e2d1e/assignments/732c2301)

- video [4 mins]
- We don't want to be reloading this program all the time, so here are some solutions.
- `also_reload`
- Sinatra Reloader

## 10	[Development Configuration](https://launchschool.com/lessons/421e2d1e/assignments/347a5cf2)

- video[2.17]
- Making reload safe. We only want reload in development.
- `if development?`
- `@logger`

## 11	[Working with Lists](https://launchschool.com/lessons/421e2d1e/assignments/0b9c3307)

- Implement methods in the `DatabasePersistence` class to restore the original functionality of the application.

1. Update `create_new_lists` so that it inserts new rows into the db.
2. Update `delete_list` so that it removes the correct row from `lists`.
3. re-wrute `update_list_name` so it updates rows in the db.

## 12	[Working with Todos](https://launchschool.com/lessons/421e2d1e/assignments/f183f8e6)

- Implement methods in the `DatabasePersistence` class to restore the original functionality of the application.
1. Create new todo
2. delete_todo_from_list
3. `update_todo_status`
4. `mark_all_todos_as_completed`

## 13	[Deploying PG Applications to Heroku](https://launchschool.com/lessons/421e2d1e/assignments/54681a23)

- 

## 14 [Summary](https://launchschool.com/lessons/421e2d1e/assignments/0981ae77)

- Extract functionality to `SessionPersistence` class
- Replace `SessionPersistence` with `DatabasePersistence`
- Safely handle inserting parameters into SQL statements woth `PG::Connection#exec_params`
- Use `configure(:development) block for environment-specific things.
- Reload our code with `sinatra/reloader`
- Log database queries made by our application.
