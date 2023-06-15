--1. Tüm blog yazılarını başlıkları, yazarları ve kategorileriyle birlikte getirin.

SELECT posts.title, users.username,categories.name FROM posts
JOIN users ON users.user_id = posts.user_id
JOIN categories ON posts.category_id = categories.category_id;

--2. En son yayınlanan 5 blog yazısını başlıkları, yazarları ve yayın tarihleriyle birlikte alın.
SELECT posts.title, users.username,posts.creation_date FROM posts
JOIN users ON users.user_id = posts.user_id
ORDER By creation_date DESC
LIMIT 5;

--3. Her blog yazısı için yorum sayısını gösterin.
SELECT count_table.count_post, posts.title FROM posts
JOIN (SELECT Count(post_id)AS count_post, post_id FROM comments
GROUP BY post_id 
ORDER By post_id DESc) AS count_table ON count_table.post_id = posts.post_id;

--4. Tüm kayıtlı kullanıcıların kullanıcı adlarını ve e-posta adreslerini gösterin.
SELECT username, email FROM users
WHERE username IS NOT NULL ;
--5. En son 10 yorumu, ilgili gönderi başlıklarıyla birlikte alın.
SELECT comments.comment, posts.title, comments.creation_date FROM comments
JOIN posts ON comments.post_id = posts.post_id
ORDER by comments.creation_date DESC
LIMIT 10;

--6. Belirli bir kullanıcı tarafından yazılan tüm blog yazılarını bulun.
SELECT users.username, comments.* From comments
JOIN users ON users.user_id = comments.user_id
WHERE users.user_id = 10;

--7. Her kullanıcının yazdığı toplam gönderi sayısını alın.
SELECT users.username, Count(comments.comment) FROM users
JOIN comments ON users.user_id = comments.user_id
GROUP by users.username;

--8. Her kategoriyi, kategorideki gönderi sayısıyla birlikte gösterin.
SELECT categories.name, Count(posts.category_id) FROM categories
JOIN posts ON posts.category_id = categories.category_id
GROUP by categories.name;

--9. Gönderi sayısına göre en popüler kategoriyi bulun.
SELECT categories.name, Count(posts.category_id) FROM categories
JOIN posts ON posts.category_id = categories.category_id
GROUP by categories.name
ORDER by Count(posts.category_id) DESC
LIMIT 1;

--10. Gönderilerindeki toplam görüntülenme sayısına göre en popüler kategoriyi bulun.
SELECT SUM(posts.view_count), categories.name FROM posts
JOIN categories ON posts.category_id = categories.category_id
GROUP by categories.name
ORDER by SUM(posts.view_count) DESC
LIMIT 1;

--11. En fazla yoruma sahip gönderiyi alın.
SELECT post_id, COUNT(comment) FROM comments
GROUP BY post_id
LIMIT 1;

--12. Belirli bir gönderinin yazarının kullanıcı adını ve e-posta adresini gösterin.
SELECT users.username, users.email, posts.title FROM users
JOIN posts ON users.user_id = posts.user_id
WHERE posts.title = 'Red Dead Redemption 2' ;

--13. Başlık veya içeriklerinde belirli bir anahtar kelime bulunan tüm gönderileri bulun.
SELECT * FROM posts
WHERE title LIKE  '%rd%' AND content LIKE '%rd%';

--14. Belirli bir kullanıcının en son yorumunu gösterin.
SELECT comments.comment, users.username FROM comments
JOIN users ON users.user_id = comments.user_id
WHERE users.username = 'kgori0'
ORDER BY comments.creation_date
LIMIT 1;

--15. Gönderi başına ortalama yorum sayısını bulun.
SELECT ROUND(AVG(count_posts),0) FROM (
	SELECT COUNT(comment) AS count_posts, post_id FROM comments
	GROUP BY post_id) AS count_table;

--16. Son 30 günde yayınlanan gönderileri gösterin.
SELECT *
FROM posts
WHERE is_published IS TRUE
  AND creation_date BETWEEN CURRENT_DATE AND '2023-05-15';

--17. Belirli bir kullanıcının yaptığı yorumları alın.
SELECT users.username,comments.comment FROM users
JOIN comments ON users.user_id = comments.user_id
WHERE users.username = 'kgori0' ;

--18. Belirli bir kategoriye ait tüm gönderileri bulun.
SELECT posts.title, categories.name FROM categories
JOIN posts ON categories.category_id= posts.category_id
WHERE categories.name = 'Music' ;

--19. 5'ten az yazıya sahip kategorileri bulun.
SELECT posts.content, categories.name FROM categories
JOIN posts ON categories.category_id= posts.category_id
GROUP BY categories.name, posts.content
HAVING COUNT(posts.content) < 5 ;

--20. Hem bir yazı hem de bir yoruma sahip olan kullanıcıları gösterin.
SELECT users.user_id, users.username
FROM users 
WHERE EXISTS ( SELECT 1 FROM posts 
    WHERE posts.user_id = users.user_id
) AND EXISTS ( SELECT 1 FROM comments 
    WHERE comments.user_id = users.user_id
);

--21. En az 2 farklı yazıya yorum yapmış kullanıcıları alın.
SELECT DISTINCT user_id FROM comments
GROUP BY user_id
HAVING COUNT(DISTINCT post_id) >= 2;

--22. En az 3 yazıya sahip kategorileri görüntüleyin.
SELECT category_id, COUNT(*) as post_count FROM posts
GROUP BY category_id
HAVING COUNT(*) >= 3;

--23. 5'ten fazla blog yazısı yazan yazarları bulun.
SELECT user_id, COUNT(*) as post_count FROM posts
GROUP BY user_id
HAVING COUNT(*) > 5;

--24. Bir blog yazısı yazmış veya bir yorum yapmış kullanıcıların e-posta adreslerini görüntüleyin. (UNION kullanarak)


--25. Bir blog yazısı yazmış ancak hiç yorum yapmamış yazarları bulun.




