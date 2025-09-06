# SkanmaLEARN :trophy:
Learning Management System use CodeIgniter3

![Ih24n69](https://raw.githubusercontent.com/ih24n69/SkanmaLEARN/refs/heads/skanma/preview.png)

## Fitur Umum yang tersedia

Fitur Umum yang tersedia
* 3 Hak Akses terdiri dari App (admin), Instructor (LMS), dan User (LMS)
* Sitemap Otomatis
* Feeds
* Meta Tags dan Schema Otomatis
* Pengaturan robots.txt
* Pengaturan ads.txt
* Pengaturan Tampilan situs dilakukan dihalaman app
* Halaman Statis
* Registrasi User dengan validasi email

Fitur LMS yang tersedia
* Masuk / Daftar User menggunakan akun sosial
* Pengaturan dilakukan di halaman app (admin)
* Filter pencarian
* Memberi ulasan pada materi
* Dapat menandai materi pembelajaran yang sudah selesai
* Wishlist (daftar keinginan) untuk User
* Pembayaran dilakukan secara manual / menggunakan payment gateway (midtrans)
* Mengubah kode template langsung melalui halaman app

Fitur Blog yang tersedia
* Pemberian kategori dan tags langsung dihalaman post
* Terdapat 2 Template yang dapat digunakan
* Pengaturan Widget melalui halaman app 
* Memasukan kode iklan melalui halaman app 
* Komentar disqus / sistem (bawaan)
* Mengubah kode template langsung melalui halaman app

## Langkah Awal Memulai

### Persyaratan
[CodeIgniter Server Requirements](https://codeigniter.com/userguide3/general/requirements.html)

* Intruksi dibawah ini akan ***mengarahkan anda untuk menjalankan project pada komputer anda (local)*** dan ditujukan hanya untuk melakukan development dan testing saja.
* Diperlukan PHP 7.1 s/d 7.3

### Menjalankan Aplikasi Menggunakan XAMPP

```
Pastikan anda sudah menjalankan module xampp yaitu apache server dan mysql.
***Download Project ini dan extract*** di folder htdocs yang ada pada xampp.
```

***Buat Database dengan nama skanmalearn*** di phpmyadmin, silahkan akses url dibawah ini untuk membuka phpmyadmin :

```
http://localhost/phpmyadmin
```

Kemudian ***import skanmalearn.sql*** yang ada ddidalam project ini

Langkah kedua ***akses url dibawah ini*** :

```
http://localhost/skanmalearn
```

Pengaturan .htaccess
```
.htaccess.dev = untuk development
.htaccess.run = untuk production

***htaccess ini penting untuk noindex dan caching.***
```

Informasi App

```
Halaman Login : http://localhost/SkanmaLEARN/auth

Admin
username : admin@gmail.com
password : admin

Instruktur
username : instruktur@gmail.com
password : instruktur

User/Student
username : userr@gmail.com
password : userr

```

## Sumber Inspirasi
* Riedayme Github ( Source Code )
* CiFireCMS (module blog dan pengaturan situs)
* Academy by Creativeitem (module lms)
* buildwithangga.com (module pembayaran manual)
* skillacademy.com (template lms)
* cms.botble.com (module pengaturan smtp dan statistik visitor)

## Lisensi

[![License: CC BY 4.0](https://i.creativecommons.org/l/by/4.0/88x31.png)](https://creativecommons.org/licenses/by/4.0/)<br/>
This work is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).