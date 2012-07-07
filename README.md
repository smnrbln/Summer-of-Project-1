###### Bir Proje Yönetim Sistemi

Bitirme Projeleri başta olmak üzere ders bağlamında ki projelerin yönetimi amaçlanmakatadır.

**- Hoca(Author) türünde ki kullanıcı,**

``+ proje önerisi yükleyebilir``

``+ projeyi değerlendirir: başarılı/başarısız; rapor yazar``

**- Öğrenci(Student) türünde ki kullanıcı,**

``+ grup tercihi oluşturabilir``

``+ grubunu görebilir``

``+ grup yöneticisi seçilir``

``+ grup yöneticisi proje tercihinde bulunur``

``+ proje görülür``

``+ proje belgeleri yüklenir: tez metni``

**-Yönetici(Admin),**

``TODO:Admin görevleri eklenecek``

**Nasıl Çalıştırılır??**

1. Klonla
`` $ git clone..``

2. Eksik gem varsa bundle et
``$ bundle install``

3. Veritabanını güncelle
`` $ rake db:migrate``

4. Sunucuyu çalıştır
`` $ rails s``

5. Yerelde çalıştır
`` localhost:3000 ``
