-- https://leetcode.com/problems/delete-duplicate-emails

DELETE p1
FROM Person p1, Person p2
WHERE p1.email = p2.email
AND p1.Id > p2.Id;

/*

By joining this table with itself on the Email column, we can get the following code.

SELECT p1.*
FROM Person p1,
    Person p2
WHERE
    p1.Email = p2.Email
;
Then we need to find the bigger id having same email address with other records. So we can add a new condition to the WHERE clause like this.

SELECT p1.*
FROM Person p1,
    Person p2
WHERE
    p1.Email = p2.Email AND p1.Id > p2.Id
;
As we already get the records to be deleted, we can alter this statement to DELETE in the end.

MySQL

DELETE p1 FROM Person p1,
    Person p2
WHERE
    p1.Email = p2.Email AND p1.Id > p2.Id
	
*/