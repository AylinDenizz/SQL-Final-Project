# SQL Assignment
## Aim
After creating a simple database and adding our data, we will repeat what we have learned.
creating and practicing queries.
## Subject
This project created for designing a simple blog database. In this database users, posts, categories
and our comments tables. The field information of the tables are follows.

## Data Structure of Tables and Constraints
1. In all of the specified tables, the id information of the table name must be PRIMARY KEY.
Relationships should be established between tables by referencing the FOREIGN KEY.
2. In all tables, if creation_date is not specified in the INSERT query
it should automatically add the date and time information at the time the data was added.
3. Users' username and email information must be UNIQUE and NULL at the same time.
Please note that content cannot be entered.
4. All posts must have title and content information. title info 50
should not be longer than one character.
5. If a post is registered without any view_count information, it starts as 0
should have value.
6. No post (post) should be registered without user information.
7. No post should be registered without category information.
8. Each category name must be unique and add a NULL record
should be restricted.
9. No comment should be registered without post information.
10. All comments must have comment information.
11. Comments may or may not contain user information.

## Data Constraints
1. There must be a minimum of 2 users in the users table.
2. In the posts table, in different categories, different views and different
Titles must contain a minimum of 50 posts.
3. There must be a minimum of 3 categories in the categories table.
4. Belong to different posts, belong to different users or user in the comments table
There must be a total of at least 250 comments that are not
5. The creation_date information of the data must be different from each other.

## SELECT Queries That Created for This Database
1. Bring all blog posts with their titles, authors and categories.
2. Get the 5 most recently published blog posts with their titles, authors and publication dates.
3. Show the number of comments for each blog post.
4. Show usernames and email addresses of all registered users.
5. Get the latest 10 comments with their respective post titles.
6. Find all blog posts written by a specific user.
7. Get the total number of posts each user wrote.
8. Show each category with the number of posts in the category.
9. Find the most popular category by number of posts.
10. Find the most popular category based on the total number of views on their posts.
11. Get the post with the most comments.
12. Show the username and email address of the author of a particular post.
13. Find all posts with a specific keyword in their title or content.
14. Show the most recent comment from a specific user.
15. Find the average number of comments per post.
16. Show posts published in the last 30 days.
17. Get comments made by a specific user.
18. Find all posts belonging to a specific category.
19. Find categories with less than 5 posts.
20. Show users who have both a post and a comment.
21. Get users who have commented on at least 2 different posts.
22. View categories with at least 3 posts.
23. Find authors who have written more than 5 blog posts.
24. View the email addresses of users who have written a blog post or left a comment. (using UNION)
25. Find authors who have written a blog post but never commented
