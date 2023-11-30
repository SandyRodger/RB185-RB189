# [Optimisation](https://launchschool.com/lessons/ce10b313/assignments)

## What to focus on

- Optimization (duh)
- db apps can be slow for many reasons.

## [Identifying Optimizations](https://launchschool.com/lessons/ce10b313/assignments/9d758946)

-video [4:44]
- It works, but it's inefficient.
- N + 1 query
- Using the most general purpose methods you can at first and then coming back to optimise.
- Minimise the number of SQL queries being made to the db.

## [Optimising N + 1 queries](https://launchschool.com/lessons/ce10b313/assignments/89590e77)

- video [21:12]
- Finding duplicated functionality.
- `git grep -n todos_count`
- `git grep -n list_complete`
- What is really needed?
- `\e`
- `NULLIF`
- consistent `count` methods.
- Preventing work happening behind the scenes which won't ever be necessary.
- Start general wioth SQL queries, this makes it easier to build forward. Then later come back and change the code.

## [Pushing Down Operations to the Database](https://launchschool.com/lessons/ce10b313/assignments/bb9d2366)

- video [13:50]
- 
