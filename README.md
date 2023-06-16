#SQL Ödevi
##Hedef
Basit bir veritabanı oluşturup verilerimizi ekledikten sonra öğrendiklerimizi tekrar edeceğimiz
sorgular oluşturmak ve pratik yapmak.
##Konu
Basit bir blog veritabanı tasarlamanız gerekiyor. Bu veritabanında users, posts, categories
ve comments tablolarımız yer alacak. Tabloların alan bilgileri şu şekilde olmalıdır.

##Tabloların Veri Yapısı ve Kısıtlamalar
1. Belirtilen tabloların hepsinde tablo ismine ait id bilgisi PRIMARY KEY olmalıdır.
Tablolar arasında FOREIGN KEY ile referans verilerek ilişki kurulmalıdır.
2. Tüm tablolarda creation_date bilgisi eğer INSERT sorgusunda belirtilmez ise
otomatik olarak verinin eklendiği andaki tarih ve zaman bilgisini eklemelidir.
3. Kullanıcıların username ve email bilgisinin UNIQUE olmasına, aynı zamanda NULL
içerik girilememesine dikkat edilmelidir.
4. Tüm gönderilerin (posts) title ve content bilgisi olmak zorundadır. title bilgisi 50
karakterden uzun olmamalıdır.
5. Bir gönderi herhangi bir view_count bilgisi olmadan kayıt edilirse 0 olarak başlangıç
değerine sahip olmalıdır.
6. Hiçbir gönderi (post) kullanıcı (user) bilgisi olmadan kayıt edilememelidir.
7. Hiçbir gönderi (post) kategori (category) bilgisi olmadan kayıt edilememelidir.
8. Her bir kategori ismi benzersiz (unique) olmalıdır ve NULL olarak kayıt eklenmesi
kısıtlanmalıdır.
9. Hiçbir yorum (comment) gönderi (post) bilgisi olmadan kayıt edilememelidir.
10. Tüm yorumların (comment) comment bilgisi olmak zorundadır.
11. Yorumlar (comment) kullanıcı (user) bilgisi içerebilir veya içermeyebilirler.

##Tablodaki Veriler
1. users tablosunda minimum 2 kullanıcı bulunmalıdır.
2. posts tablosunda farklı kategorilerde, farklı görüntülenme sayılarında ve farklı
başlıklarda minimum 50 gönderi bulunmalıdır.
3. categories tablosunda minimum 3 kategori bulunmalıdır.
4. comments tablosunda farklı gönderilere ait, farklı kullanıcılara ait veya kullanıcısı
olmayan toplam minimum 250 yorum bulunmalıdır.
5. Verilerin creation_date bilgileri birbirinden farklı olmalıdır.
Veritabanında Gerçekleştirmek İstediğimiz İşlemler
1. Tüm blog yazılarını başlıkları, yazarları ve kategorileriyle birlikte getirin.
2. En son yayınlanan 5 blog yazısını başlıkları, yazarları ve yayın tarihleriyle birlikte
alın.
3. Her blog yazısı için yorum sayısını gösterin.
4. Tüm kayıtlı kullanıcıların kullanıcı adlarını ve e-posta adreslerini gösterin.
5. En son 10 yorumu, ilgili gönderi başlıklarıyla birlikte alın.
6. Belirli bir kullanıcı tarafından yazılan tüm blog yazılarını bulun.
7. Her kullanıcının yazdığı toplam gönderi sayısını alın.
8. Her kategoriyi, kategorideki gönderi sayısıyla birlikte gösterin.
9. Gönderi sayısına göre en popüler kategoriyi bulun.
10. Gönderilerindeki toplam görüntülenme sayısına göre en popüler kategoriyi bulun.
11. En fazla yoruma sahip gönderiyi alın.
12. Belirli bir gönderinin yazarının kullanıcı adını ve e-posta adresini gösterin.
13. Başlık veya içeriklerinde belirli bir anahtar kelime bulunan tüm gönderileri bulun.
14. Belirli bir kullanıcının en son yorumunu gösterin.
15. Gönderi başına ortalama yorum sayısını bulun.
16. Son 30 günde yayınlanan gönderileri gösterin.
17. Belirli bir kullanıcının yaptığı yorumları alın.
18. Belirli bir kategoriye ait tüm gönderileri bulun.
19. 5'ten az yazıya sahip kategorileri bulun.
20. Hem bir yazı hem de bir yoruma sahip olan kullanıcıları gösterin.
21. En az 2 farklı yazıya yorum yapmış kullanıcıları alın.
22. En az 3 yazıya sahip kategorileri görüntüleyin.
23. 5'ten fazla blog yazısı yazan yazarları bulun.
24. Bir blog yazısı yazmış veya bir yorum yapmış kullanıcıların e-posta adreslerini
görüntüleyin. (UNION kullanarak)
25. Bir blog yazısı yazmış ancak hiç yorum yapmamış yazarları bulun
