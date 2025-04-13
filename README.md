# 1. Two Sum Algorithm

## 🧠 Deskripsi
Two Sum adalah sebuah algoritma populer dalam pemrograman yang digunakan 
untuk mencari dua angka dalam sebuah array yang jika dijumlahkan 
akan menghasilkan sebuah target tertentu.

---

## 💡 Permasalahan
Diberikan sebuah array integer `nums` dan sebuah nilai integer `target`, 
kembalikan **indeks** dari dua angka sedemikian rupa sehingga `nums[i] + nums[j] == target`.

- Setiap input memiliki **tepat satu solusi**
- Tidak boleh menggunakan elemen yang sama dua kali
- Boleh mengembalikan jawabannya dalam urutan apa saja

---

## 🧮 Contoh Input dan Output

### Input
```plaintext
nums = [3, 2, 4, 7, 11, 15]
target = 9
```
# 2. Best Time to Buy and Sell Stock

## 🧠 Overview

**Best Time to Buy and Sell Stock** adalah salah satu masalah klasik dalam wawancara coding. 
Soal ini sangat cocok untuk menguji pemahaman tentang array, algoritma greedy, 
dan pengambilan keputusan optimal dalam satu kali iterasi.

---

## 💡 Deskripsi Soal

Diberikan sebuah array `prices`, di mana `prices[i]` adalah harga saham pada hari ke-`i`. Tugas kita adalah **mencari 
keuntungan maksimum** dari satu kali transaksi — yaitu membeli **sebelum** menjual.

### 🧾 Aturan:
- Hanya boleh membeli dan menjual **satu kali**.
- Tidak diperbolehkan menjual sebelum membeli.
- Jika tidak ada keuntungan yang bisa diperoleh, maka hasilnya adalah `0`.

### 🔍 Contoh:
```dart
Input:  prices = [7, 1, 5, 3, 6, 4]
Output: 5
