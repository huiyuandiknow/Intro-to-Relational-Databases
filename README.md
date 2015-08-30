# intro-to-relational-databases
displays the final product for Udacity course: Intro to Relational Databases

The final projects ise a tournament planner that contains 2 parts: <br>
1. defining the database schema (SQL table definitions)<br>
2. writing the python code that will use it

Example SQL Table structures with 8 players: 

- Players Table <br>

    | id | player |
    |----|--------|
    |  1 |  Chris |
    |  2 |  James |
    |  3 |  Jacob |
    |  4 |  Lydia |
    |  5 |  Diana |
    |  6 |  Kenny |
    |  7 |    Moo |
    |  8 |   Nana |

- Matches Table <br>

|  n | winner | loser |
|----|--------|-------|
|  1 |      1 |     3 |
|  2 |      5 |     7 |
|  3 |      2 |     4 |
|  4 |      6 |     8 |
|  5 |      1 |     5 |
|  6 |      2 |     6 |
|  7 |      3 |     7 |
|  8 |      4 |     8 |
|  9 |      1 |     2 |
| 10 |      3 |     4 |
| 11 |      5 |     6 |
| 12 |      7 |     8 |
        
- Wins View <br>

| id | player | wins |
|----|--------|------|
|  1 |  Chris |    3 |
|  2 |  James |    2 |
|  3 |  Jacob |    2 |
|  4 |  Lydia |    1 |
|  5 |  Diana |    2 |
|  6 |  Kenny |    1 |
|  7 |    Moo |    1 |
|  8 |   Nana |    0 |
        
- Loses View <br>

| id | player | loses |
|----|--------|-------|
|  1 |  Chris |     0 |
|  2 |  James |     1 |
|  3 |  Jacob |     1 |
|  4 |  Lydia |     2 |
|  5 |  Diana |     1 |
|  6 |  Kenny |     2 |
|  7 |    Moo |     2 |
|  8 |   Nana |     3 |
