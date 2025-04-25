#### Berikut adalah beberapa soal LeetCode yang sering muncul dalam wawancara kerja (coding interview), baik untuk pemula maupun tingkat lanjut, [lihat daftar lengkap dan daftar latihan terstruktur disini](https://github.com/juahadinata/belajar-leetcode/blob/main/penjelasan/soal_soal_leetcode.md)

### 1. Two Sum Algorithm

#### Deskripsi
**Two Sum** adalah sebuah algoritma populer dalam pemrograman yang digunakan 
untuk mencari dua angka dalam sebuah array yang jika dijumlahkan 
akan menghasilkan sebuah ```target``` tertentu.  

Bayangkan seorang pemuda punya kriteria pasangan (```target```). Setiap kali bertemu seseorang (elemen dalam list), dia memeriksa apakah orang itu adalah ```complement``` yang pas. Kalau belum cocok, dia lanjut ke orang berikutnya sambil terus berharap.

Ketika akhirnya bertemu seseorang yang memenuhi kriterianya (```complement``` ditemukan dalam ```map```), hatinya langsung berkata: *"Inilah dia!"* 💖 dan pencarian pun usai sudah!

Jadi, algoritma Two Sum ini bisa dianalogikan seperti mencari pasangan, asalkan complement-nya ada. Kalau nggak ketemu? Ya, terpaksa ```return null``` alias "Jodoh tidak ditemukan".

#####  [Baca Selengkapnya](https://github.com/juahadinata/belajar-leetcode/blob/main/penjelasan/two_sum.md)

---

### 2. Best Time to Buy and Sell Stock

#### Overview

**Best Time to Buy and Sell Stock** adalah salah satu masalah klasik dalam wawancara coding. 
Soal ini sangat cocok untuk menguji pemahaman tentang array, algoritma greedy, 
dan pengambilan keputusan optimal dalam satu kali iterasi.
*Bisa dianalogikan kapan waktu yang tepat untuk membeli saham dan kapan menjualnya.*


#### Aturan:
- Hanya boleh membeli dan menjual **satu kali**.
- Tidak diperbolehkan menjual sebelum membeli.
- Jika tidak ada keuntungan yang bisa diperoleh, maka hasilnya adalah `0`.

####  Contoh:
```dart
Input:  prices = [7, 1, 5, 3, 6, 4]
Output: 5
``` 

#####  [Baca Selengkapnya](https://github.com/juahadinata/belajar-leetcode/blob/main/penjelasan/besttime_to_buy_and_sell_stck.md)

---

### 3. Contains Duplicate Algorithm

#### Deskripsi Masalah
Diberikan sebuah array `nums`, tentukan apakah array tersebut mengandung elemen yang **duplikat**.

- Return `true` jika ada nilai yang muncul **lebih dari sekali**.
- Return `false` jika setiap elemen **unik**.

#####  [Baca Selengkapnya](https://github.com/juahadinata/belajar-leetcode/blob/main/penjelasan/contains_duplicate.md)
---

### 4. Valid Palindrome
#### Apa itu Valid Palindrome?
Palindrome adalah sebuah kata, frasa, angka, atau urutan karakter yang dibaca sama baik dari depan maupun belakang, mengabaikan spasi, tanda baca, dan kapitalisasi huruf.

Contoh:
- "Kasur nababan rusak" → Palindrome ✅
- "race a car" → Bukan palindrome ❌

#### Tujuan Algoritma Valid Palindrome
Memeriksa apakah sebuah string merupakan palindrome dengan mengabaikan karakter non-alphanumeric (seperti koma, spasi, titik, dll.) dan tidak membedakan huruf besar-kecil.

#####  [Baca Selengkapnya](https://github.com/juahadinata/belajar-leetcode/blob/main/penjelasan/valid_palindrome.md)
---

### 5. Maximum Subarray
##### Apa itu Maximum Subarray Problem?
Maximum Subarray adalah masalah klasik dalam algoritma, di mana kita diminta untuk mencari subarray (bagian berurutan dari array) yang memiliki jumlah (sum) terbesar.

##### Contoh:
Misal kita punya array:
```dart
[-2, 1, -3, 4, -1, 2, 1, -5, 4]
```
Subarray dengan jumlah terbesar adalah:
```dart
[4, -1, 2, 1] → total = 6
```
🎯 Tujuan:
Mencari jumlah maksimum dari subarray berurutan.

#####  [Baca Selengkapnya](https://github.com/juahadinata/belajar-leetcode/blob/main/penjelasan/maximum_subarray.md)
---