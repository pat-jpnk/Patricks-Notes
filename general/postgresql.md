- UNIQUE constraints can be applied to pairs of columns 
  e.g. "UNIQUE(user_id, post_id)"

  -> useful for enforcing conditions in junction tables

UPDATE / SET / WHERE

ALTER TABLE

INSERT INTO / VALUES

DELETE / FROM / WHERE

"GROUP BY":
  - "SELECT department" , MAX(salary) FROM Employee GROUP BY department
  - return the maximum salary for each grouping of department, instead of for all 
    rows combined
  - in general, partitions the set of results into groups based on one or more column values


- polymorphic associations
  - not recommended, limits use of foreign key columns as columns can refer to multiple tables (using plain integer id)
  - puts limits on data consistency (following point above)
  - junction table with columns referring to multiple tables 
    (e.g. likes table with "comment" and "post" like entries relating to users)

  
  - alternative: 
    - include multiple columns to reference different tables, set remaining columns
      to NULL, when having two such columns, one must always be NULL (CHECK constraint)
    - enables foreign key usage

    - "SELECT COALESCE (NULL, 5)" -> returns the first value that is not NULL = (5)
    - "SELECT COALESCE ((4)::BOOLEAN::INTEGER, 0)" = (1)
    
    - example CHECK constraint to enforce point above:
      
      - Add CHECK of
      (
       COALESCE((post_id)::BOOLEAN::INTEGER, 0)
       +
       COALESCE((comment_id)::BOOLEAN::INTEGER, 0)
      ) = 1 

      -> ensures that one is NULL and the other is not
