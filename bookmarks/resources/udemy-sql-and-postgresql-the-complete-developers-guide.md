# Udemy: SQL and PostgreSQL - The Complete Developer's Guide

## Chapter 1/37 <sup>(complete)</sup>

<details>
<summary>What web service gives free access to a postgres client?</summary>

> https://pg-sql.com

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 1

> References:
---
</details>

## CRUD Operations

<details>
<summary>Create a table of cities holding name, country, population and area of each?</summary>

> ```sql
> create table cities (name varchar(50), country varchar(50), population int, area int);
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 1

> References:
---
</details>

<details>
<summary>Insert data into a table?</summary>

> ```sql
> insert into cities (name, country, population, area)
> values ('Tehran', 'Iran', 15000000, 40000),
>        ('Munich', 'Germany', 8000000, 20000);
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 1

> References:
---
</details>

<details>
<summary>Retrieve information from a table?</summary>

> ```sql
> select * from cities;
> select name, country from cities;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 1

> References:
---
</details>

## Calculated Columns

<details>
<summary>Calculate the arithmetic operations of two columns from a table?</summary>

> There are eight main arithmetic operations available in SQL:
>
> 1. Addition `+`
> 2. Subtraction `-`
> 3. Multiplication `*`
> 4. Division `/`
> 5. Power `^`
> 6. Square Root `|/`
> 7. Absolute Value `@`
> 8. Remainder `%`
>
> ```sql
> select name, population / area from cities;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 1

> References:
---
</details>

<details>
<summary>Name the operational generated column in a query?</summary>

> ```sql
> select name, population / area as density from cities;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 1

> References:
---
</details>

## String Operations

<details>
<summary>What string operations are available in SQL?</summary>

> - Concatanation either by `||` operator or `concat()` function
> - Change case by `lower()` and `upper()`
> - Length of string with `length()`
>
> ```sql
> select firstname || ' ' || lastname as fullname from staff;
> select concat(firstname, ' ', lastname) as fullname from staff;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 1

> References:
---
</details>

## Chapter 2/37 <sup>(complete)</sup>

## Filtering Query

<details>
<summary>Limit the results of a query?</summary>

> ```sql
> select name, area from cities where area > 40000;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 2

> References:
---
</details>

<details>
<summary>What parts of a select query does the database read first?</summary>

> In a simple select query statement:
>
> ```sql
> select name, area from cities where area > 40000;
> ``````
>
> The source `from` would be read first. Then, the filtering `where` reduces
> the results. Finally, the columns would be selected.

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 2

> References:
---
</details>

<details>
<summary>Filter query result by checking the existance of a column in a set of values?</summary>

> ```sql
> select name, country from cities where country in ('USA', 'Germany', 'France');
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 2

> References:
---
</details>

<details>
<summary>Reverse the filtering of a query by checking the none-existance of a column in a set of values?</summary>

> ```sql
> select name, country from cities where country not in ('USA', 'Germany', 'France');
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 2

> References:
---
</details>

## Comparison Operators

<details>
<summary>What comparison operators are supported by SQL?</summary>

> - Equality `=`
> - Greater `>`
> - Less `<`
> - Greater or Equal `>=`
> - Less or Equal `<=`
> - Inequality `<>` or `!=`
> - between two `between`
> - exists in list `in`
> - not exists in list `not in`

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 2

> References:
---
</details>

## Compound Operators

<details>
<summary>What compound operators are supported by SQL?</summary>

> - `and`
> - `or`
>
> ```sql
> select device, manufacturer from devices where country in ('USA', 'China');
> select device, manufacturer from devices where country = 'USA' or country = 'China';
> select device, manufacturer from devices where country = 'USA' and manufacturer = 'ASUS';
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 2

> References:
---
</details>

## Calculated Conditions

<details>
<summary>Limit the results of a query by comparing the calculated values of two columns?</summary>

> ```sql
> select name, country, population / area as density from cities where population / area > 40000;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 2

> References:
---
</details>

## Update Records

<details>
<summary>Update a cell within a very big table?</summary>

> ```sql
> update cities set population = 20000000 where name = 'Tehran';
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 2

> References:
---
</details>

## Delete Records

<details>
<summary>Delete a row from a table?</summary>

> ```sql
> delete from cities where name = 'Tehran';
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 2

> References:
---
</details>

<details>
<summary>Delete all rows of a table?</summary>

> ```sql
> delete from cities;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 2

> References:
---
</details>

## Chapter 3/37 <sup>(complete)</sup>

## Relationships

<details>
<summary>How many relationships are possible between data?</summary>

> - one to one
> - one to many
> - many to one
> - many to many

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 3

> References:
---
</details>

## Primary Key

<details>
<summary>What are the characteristics of a primary key?</summary>

> - Each row in every table has one primary key (not empty)
> - No other row in the same table can have the same value (unique)
> - 99% of the time called id
> - Either an integer or a UUID
> - Will never change

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 3

> References:
---
</details>

<details>
<summary>What is the common way of making a primary key auto generate a unique id in postgres?</summary>

> Using `serial` in postgres, we will have a value typed as integral and auto
 generate unique IDs.
>
> ```sql
> create table users (
>     id serial primary key,
>     username varchar(50)
> )
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 3

> References:
---
</details>

## Foreign Key

<details>
<summary>What are the characteristics of a foreign key?</summary>

> - Rows only have this key if they have a cell that belongs to another record
> - Many rows in the same table can have the same foreign key
> - Name varies, usually called something like `xyz_id`
> - Exactly equal to the primary key of the referenced row
> - Will change if the relationship changes

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 3

> References:
---
</details>

<details>
<summary>What statement is used to create a foreign key?</summary>

> ```sql
> create table photos (
>     id serial primary key,
>     url varchar(1000),
>     user_id integer references users(id)
> )
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 3

> References:
---
</details>

## Foreign Key Insertion

<details>
<summary>What happens when record gets inserted without foreign key?</summary>

> A record having foreign key referencing to an existing record would be
> successful. But a record referencing to an invalid record will fail. Also,
> when inserting a record having foreign key set to `NULL` is also a successful
> insertion.
>
> ```sql
> insert into photos (url, user_id) values ('https://cdn1.example.com/image1.jpg', NULL);
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 3

> References:
---
</details>

## Constraints

<details>
<summary>What constraints are supported by SQL when referencing record of a foreign key is deleted?</summary>

> - `on delete restrict`: throw an error when deleting the record having foreign keys referenced to it
> - `on delete no action`: same as above
> - `on delete cascade`: delete the referencing record too
> - `on delete set null`: set the foreign key value to NULL
> - `on delete set default`: set the forign key value to a default value

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 3

> References:
---
</details>

<details>
<summary>What is the default behavior of postgres when deleting a record being referenced by foreign keys?</summary>

> When the action after deletion of referenced record is not specified for a
> foreign key, `on delete restrict` is the default.
>
> ```sql
> create table photos (
>     id serial primary key,
>     url varchar(1000),
>     user_id integer references on users(id) on delete restrict
> )
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 3

> References:
---
</details>

## Join Query

<details>
<summary>Query two tables by associating them on foreign keys?</summary>

> ```sql
> select url, username
> from users
> join photos on users.id = photos.user_id;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 3

> References:
---
</details>

## Default Value

<details>
<summary>What statement can be used to set default value for a foreign key when referenced record is deleted?</summary>

> ```sql
> create table photos (
>     id serial primary key,
>     url varchar(50) not null,
>     user_id integer default 0 references on users(id) on delete set default
> )
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 3

> References:
---
</details>

## Chapter 4/37 <sup>(complete)</sup>

## Joins

<details>
<summary>How many joins are supported by SQL?</summary>

> - **join** or **inner join**
>
> ```sql
> select photo_id, user_id
> from users
> join photos on photos.user_id = users.id;
> ``````
>
> - **left outer join**
>
> ```sql
> select photo_id, user_id
> from users
> left join photos on photos.user_id = users.id;
> ``````
>
> - **right outer join**
>
> ```sql
> select photo_id, user_id
> from users
> right join photos on photos.user_id = users.id;
> ``````
>
> - **full join**
>
> ```sql
> select photo_id, user_id
> from users
> full join photos on photos.user_id = users.id;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 4

> References:
---
</details>

<details>
<summary>Filter the records of a join query with a condition?</summary>

> ```sql
> select photo_id, user_id
> from users
> join photos on photos.user_id = users.id
> where photos.views > 2000;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 4

> References:
---
</details>

## Chapter 5/37 <sup>(complete)</sup>

## Grouping

<details>
<summary>What are the main characteristics of grouping operation?</summary>

> - Reduces many rows down to fewer rows
> - Done by using the 'GROUP BY' keyword
> - Visualizing the result is key to use

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 5

> References:
---
</details>

<details>
<summary>What steps are taken to group a table by a specific column?</summary>

> 1. Group records by a specific column, e.g. `user_id`
> 2. Find the set of all unqiue values in that column
> 3. Take each record and assign to a group based on grouped unique values

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 5

> References:
---
</details>

<details>
<summary>Group records of a table by one of its colums?</summary>

> ```sql
> select user_id
> from comments
> group by user_id;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 5

> References:
---
</details>

## Filtering Groups

<details>
<summary>What is the use case of having clause?</summary>

> When we are talking about filtering along with an aggregate function, we
> should be filtering aggregated results with `having` clause.
>
> For example, find the number of comments for each photo where *the photo_id
> is less than 3* and *the photo has more than 2 comments*.
>
> In this example, the first condition involves with filtering what is going to
> be grouped, so we use a `where` clause for it. The second condition on the
> other hand, is regarding aggregated results, which we should be using a
> `having` clause to apply it.
>
> ```sql
> select photo_id, count(*) as comments
> from comments
> where photo_id < 3
> group by photo_id
> having count(*) > 2;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 5

> References:
---
</details>

<details>
<summary>Filter a set a groups of records grouped by a specific column?</summary>

> ```sql
> select authors.name, count(books.id) as releases
> from authors
> join books on authors.
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 5

> References:
---
</details>

## Aggregation

<details>
<summary>What are the main characterestics of aggregation operations?</summary>

> - Reduces many values down to one
> - Done by using aggregate functions

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 5

> References:
---
</details>

## Aggregation Functions

<details>
<summary>What are the common aggregate functions?</summary>

> - `count()`
> - `min()`
> - `max()`
> - `sum()`

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 5

> References:
---
</details>

## Count Aggregate Function

<details>
<summary>Count how many comments each user have posted?</summary>

> ```sql
> select user_id, count(*)
> from comments
> group by user_id;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 5

> References:
---
</details>

<details>
<summary>What is the behavior of count aggregate function when grouped column has a null value?</summary>

> Records having null value on grouped column will be ignored. To take them
> into account, you should not use any specific column in `count()` aggregate
> function and use `*` instead.
>
> ```sql
> select user_id, count(*)
> from comments
> group by user_id;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 5

> References:
---
</details>

## Min and Max Aggregate Function

<details>
<summary>Find the most commented photo of a photo sharing app?</summary>

> ```sql
> select max(content)
> from comments
> group by photo_id;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 5

> References:
---
</details>

## Sum Aggregate Function

<details>
<summary>Find the sum of all comments from each photo record in a photo sharing app?</summary>

> ```sql
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 5

> References:
---
</details>

## Chapter 6/37 <sup>(ignored)</sup>
## Chapter 7/37 <sup>(complete)</sup>

## Ordering Result Set

<details>
<summary>Reorder records of the result set with ascending and descending order?</summary>

> ```sql
> select *
> from products
> order by price asc;
> ``````
>
> ```sql
> select *
> from products
> order by price desc;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 7

> References:
---
</details>

<details>
<summary>Set a second ordering rule for result set?</summary>

> ```sql
> select *
> from products
> order by price asc, weight desc;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 7

> References:
---
</details>

## Limiting Result Set

<details>
<summary>What is the use case of limit?</summary>

> Only gives the number of records requested.
>
> ```sql
> select *
> from users
> limit 10;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 7

> References:
---
</details>

<details>
<summary>Where should the limit clause be located in query?</summary>

> `limit` clause goes at the end of query string after `group by` clause if
> exists, and before `offset`.

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 7

> References:
---
</details>

## Offseting Result Set

<details>
<summary>What is the use case of offset?</summary>

> As many number of records as you want can be skipped with `offset` clause.
>
> ```sql
> select *
> from users
> offset 40;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 7

> References:
---
</details>

<details>
<summary>Where should the offset clause be located within a query?</summary>

> At the end, after `sort by`, `group by`, `having`, and `limit` clauses.

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 7

> References:
---
</details>

## Chapter 8/37 <sup>(complete)</sup>

## Union

<details>
<summary>What is the use case of union clause?</summary>

> There are some cases where two different result sets need to be combined to
> form the desired result set. For example:
>
> *Find the 4 products with the highest price, and the 4 products with the
> highest price/weight ratio*.

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 8

> References:
---
</details>

<details>
<summary>What is the prerequisite of a union?</summary>

> All columns of queries should match.

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 8

> References:
---
</details>

<details>
<summary>Combine two different result sets with and without duplicates?</summary>

> ```sql
> (
>     select product_id
>     from products
>     order by price desc
>     limit 4
> )
> union
> (
>     select product_id
>     from products
>     order by price / weight desc
>     limit 4
> );
> ``````
>
> To retrieve duplicates use `union all` clause.

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 8

> References:
---
</details>

<details>
<summary>When would parenthesis be mandatory for union queries?</summary>

> When the last query has `order by` or `limit` or `offset` clauses, the union
> doesn't know if these clauses should be used on the last query or the entire
> statement. This is why when we have these clauses in query, we should use
> parenthesis. Otherwise, union works fine without parenthesis.
>
> ```sql
> select * from products;
> union
> select * from products;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 8

> References:
---
</details>

## Intersect

<details>
<summary>Collect the intersection of two result sets?</summary>

> ```sql
> select * from products order by price desc limit 4;
> intersect
> select * from products order by price / weight desc limit 4;
> ``````
>
> Use `intersect all` to have duplicates appearing in both sides.

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 8

> References:
---
</details>

## Exception

<details>
<summary>Find the records appearing in first result set and not in second result set?</summary>

> ```sql
> select * from products order by price desc limit 4;
> except
> select * from products order by price / weight desc limit 4;
> ``````
>
> Above clause removes duplicates. Use `except all` to also show duplicates.

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 8

> References:
---
</details>

## Chapter 9/37 <sup>(writing)</sup>

## Subquery

<details>
<summary>Where are subqueries mostly used?</summary>

> When a condition requires a value or a set of values that must be collected
> by another query as a prerequisite, we can use subqueries.
>
> ```sql
> select name, price
> from products
> where price > (select max(price) from products where manufacturer = 'Samsung');
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 9

> References:
---
</details>

## Single Value Subquery

<details>
<summary>Use a subquery to give a single value in select clause?</summary>

> ```sql
> select name, price, (select max(price) from products) as max_price
> from products;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 9

> References:
---
</details>

## One Column Subquery

<details>
<summary>Use a subquery in from clause as a source of data?</summary>

> ```sql
> select name, price_weight_ratio
> from (select name, price / weight as price_weight_ratio from produts
> where price_weight_ratio > 5;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 9

> References:
---
</details>

## Multi Record Subquery

## Chapter 10/37 <sup>(writing)</sup>
## Chapter 11/37 <sup>(writing)</sup>
## Chapter 12/37 <sup>(writing)</sup>
## Chapter 13/37 <sup>(writing)</sup>
## Chapter 14/37 <sup>(complete)</sup>

## Not Null

<details>
<summary>When creating a table define a column not taking null value?</summary>

> ```sql
> create table products (
>     id serial primary key,
>     name varchar(50),
>     price integer not null,
>     weight integer
> );
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 14

> References:
---
</details>

<details>
<summary>Modify a table after creation and set a column not to take null value?</summary>

> ```sql
> alter table products alter column price set not null;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 14

> References:
---
</details>

## Updating Column

<details>
<summary>Update all null values of a column to set 0 instead?</summary>

> ```sql
> update table products set price = 0 where price is null;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 14

> References:
---
</details>

## Data Validation

<details>
<summary>What input data validation constraints do we have in database side?</summary>

> - Check if the value is already defined (not null)
> - Check if the value is unique in its column (unique)
> - Check if the value is within desired range (comparison operators)

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 14

> References:
---
</details>

## Default Value

<details>
<summary>Set a default value for a column?</summary>

> ```sql
> create table products (
>     id serial primary key,
>     name varchar(50),
>     price integer default 100,
>     weight integer default 0 not null
> );
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 14

> References:
---
</details>

<details>
<summary>Alter a column to add default value?</summary>

> ```sql
> alter table products alter column price set default 0;
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 14

> References:
---
</details>

## Unique Values

<details>
<summary>Define a column as having only unique values?</summary>

> ```sql
> create table products (
>     id serial primary key,
>     name varchar(50) unique,
>     price integer,
>     weight integer,
> );
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 14

> References:
---
</details>

<details>
<summary>Add a uniqueness constraint to a column?</summary>

> ```sql
> alter table products add unique (name);
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 14

> References:
---
</details>

<details>
<summary>Remove uniqueness constraint on a column?</summary>

> ```sql
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 14

> References:
---
</details>

## Multiple Column Unique Value

<details>
<summary>Define a column to take unique values in combination of multiple columns?</summary>

> ```sql
create table products (
    id serial primary key,
    name varchar(50),
    price integer not null,
    weight integer,
    unique(name, price)
):
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 14

> References:
---
</details>

<details>
<summary>Add uniqueness value to multiple columns?</summary>

> ```sql
> alter table products add unique(name, price);
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 14

> References:
---
</details>

## Checking Value

<details>
<summary>Define a column with a check constraint on its value?</summary>

> ```sql
> create table products (
>     id serial primary key,
>     name varchar(50),
>     price integer default 0 not null check (price > 0)
>     weight integer default 0 not null (weight > 0)
> );
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 14

> References:
---
</details>

<details>
<summary>Add a check constraint after column is created?</summary>

> ```sql
> alter table products add check(price > 0);
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 14

> References:
---
</details>

## Checking Multiple Column

<details>
<summary>Define multiple columns with a check on all of them?</summary>

> ```sql
create table products (
    id serial primary key,
    name varchar(50) not null,
    creation timestamp not null,
    delivery timestamp not null,
    check(delivery > creation)
);
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 14

> References:
---
</details>

## Chapter 15/37 <sup>(complete)</sup>

## Database Diagram

<details>
<summary>Name a few web services for drawing database diagrams?</summary>

> - dbdiagram.io
> - drawsql.app
> - sqldbm.com
> - quickdatabasediagrams.com
> - ondras.zarovi.cz/sql/demo

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 14

> References:
---
</details>

## Chapter 16/37 <sup>(complete)</sup>

<details>
<summary>In case of associative constraints, check if either of two columns exist in a row?</summary>

> ```sql
> alter table likes add check (
>     (
>         coalesce((post_id)::boolean::integer, 0)
>         +
>         coalesce((comment_id)::boolean::integer, 0)
>     ) = 1
> );
> ``````

> Origins:
> - Udemy: SQL and PostgreSQL - The Complete Developer's Guide - Chapter 16

> References:
---
</details>

## Chapter 17/37 <sup>(ignored)</sup>
## Chapter 18/37 <sup>(ignored)</sup>
## Chapter 19/37 <sup>(ignored)</sup>
## Chapter 20/37 <sup>(ignored)</sup>
## Chapter 21/37 <sup>(ignored)</sup>
## Chapter 22/37
## Chapter 23/37
## Chapter 24/37
## Chapter 25/37
## Chapter 26/37
## Chapter 27/37
## Chapter 28/37
## Chapter 29/37
## Chapter 30/37
## Chapter 31/37
## Chapter 32/37
## Chapter 33/37
## Chapter 34/37
## Chapter 35/37
## Chapter 36/37
## Chapter 37/37