-- Write your PostgreSQL query statement below
SELECT DISTINCT author_id as id
FROM Views as v
where author_id in (SELECT viewer_id WHERE author_id = v.author_id)
order by author_id asc
