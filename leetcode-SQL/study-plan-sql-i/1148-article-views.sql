-- 1148. Article Views I  
-- https://leetcode.com/problems/article-views-i/

-- SQLite3

-- Table Views
-- Each row of this table indicates that some viewer viewed an article (written by some author) on some date. 
-- Note that equal author_id and viewer_id indicate the same person.

CREATE TABLE "Views" (
    "article_id" INTEGER,
    "author_id" INTEGER,
    "viewer_id" INTEGER,
    "viewer_date" DATE
);

INSERT INTO Views (article_id, author_id, viewer_id, viewer_date) VALUES (1, 3, 5, 2019-08-01);
INSERT INTO Views (article_id, author_id, viewer_id, viewer_date) VALUES (1, 3, 6, 2019-08-02);
INSERT INTO Views (article_id, author_id, viewer_id, viewer_date) VALUES (2, 7, 7, 2019-08-01);
INSERT INTO Views (article_id, author_id, viewer_id, viewer_date) VALUES (2, 7, 6, 2019-08-02);
INSERT INTO Views (article_id, author_id, viewer_id, viewer_date) VALUES (4, 7, 1, 2019-07-22);
INSERT INTO Views (article_id, author_id, viewer_id, viewer_date) VALUES (3, 4, 4, 2019-07-21);
INSERT INTO Views (article_id, author_id, viewer_id, viewer_date) VALUES (3, 4, 4, 2019-07-21);

-- Query
-- Write an SQL query to find all the authors that viewed at least one of their own articles.
-- Return the result table sorted by id in ascending order.

SELECT author_id AS id
FROM Views
WHERE author_id = viewer_id
GROUP BY id
ORDER BY id ASC;

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC;

-- Notas
-- SELECT DISTINCT statement is used to return only distinct (different) values