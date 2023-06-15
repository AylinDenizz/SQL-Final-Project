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
SELECT posts.post_id , count_table.count_post, posts.title FROM posts
JOIN (SELECT Count(post_id)AS count_post, post_id FROM comments
GROUP BY post_id 
ORDER By post_id DESc) AS count_table ON count_table.post_id = posts.post_id;

--4. Tüm kayıtlı kullanıcıların kullanıcı adlarını ve e-posta adreslerini gösterin.

--5. En son 10 yorumu, ilgili gönderi başlıklarıyla birlikte alın.
--6. Belirli bir kullanıcı tarafından yazılan tüm blog yazılarını bulun.
--7. Her kullanıcının yazdığı toplam gönderi sayısını alın.
--8. Her kategoriyi, kategorideki gönderi sayısıyla birlikte gösterin.
--9. Gönderi sayısına göre en popüler kategoriyi bulun.
--10. Gönderilerindeki toplam görüntülenme sayısına göre en popüler kategoriyi bulun.
--11. En fazla yoruma sahip gönderiyi alın.
--12. Belirli bir gönderinin yazarının kullanıcı adını ve e-posta adresini gösterin.
--13. Başlık veya içeriklerinde belirli bir anahtar kelime bulunan tüm gönderileri bulun.
--14. Belirli bir kullanıcının en son yorumunu gösterin.
--15. Gönderi başına ortalama yorum sayısını bulun.
--16. Son 30 günde yayınlanan gönderileri gösterin.
--17. Belirli bir kullanıcının yaptığı yorumları alın.
--18. Belirli bir kategoriye ait tüm gönderileri bulun.
--19. 5'ten az yazıya sahip kategorileri bulun.
--20. Hem bir yazı hem de bir yoruma sahip olan kullanıcıları gösterin.
--21. En az 2 farklı yazıya yorum yapmış kullanıcıları alın.
--22. En az 3 yazıya sahip kategorileri görüntüleyin.
--23. 5'ten fazla blog yazısı yazan yazarları bulun.
--24. Bir blog yazısı yazmış veya bir yorum yapmış kullanıcıların e-posta adreslerini görüntüleyin. (UNION kullanarak)
--25. Bir blog yazısı yazmış ancak hiç yorum yapmamış yazarları bulun.
