#### Mari kita bedah baris kode berikut:

```dart
bool isPalindrome(String s) {
  String cleaned = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  return cleaned == cleaned.split('').reversed.join('');
}
```

```s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();```
*Baris ini memiliki dua fungsi utama:*

- Menghapus semua karakter yang bukan huruf atau angka.
- Mengubah semua huruf menjadi huruf kecil.

##### 1️⃣ RegExp(r'[^a-zA-Z0-9]')
Bagian ini adalah sebuah regular expression (regex) yang digunakan untuk mencocokkan pola tertentu:
- a-z → Semua huruf kecil dari a hingga z.
- A-Z → Semua huruf besar dari A hingga Z.
- 0-9 → Semua angka dari 0 hingga 9.
- [^...] → Simbol ^ di dalam tanda kurung siku membalikkan pola. Artinya, cocokkan semua karakter yang bukan huruf atau angka.

👉 Kesimpulan:
    Regex ini akan mencocokkan semua karakter yang bukan huruf atau angka, seperti: spasi, tanda baca, simbol, dan lainnya.

##### 2️⃣ s.replaceAll(...)
- Method ```replaceAll()``` digunakan untuk mengganti semua kecocokan dalam sebuah string:

- ```s``` → Adalah string asli yang akan dimodifikasi.
- ```RegExp(...)``` → Pola regex yang digunakan sebagai acuan untuk pencarian.
- ```''``` → Mengganti karakter yang cocok dengan string kosong ```('')```, artinya menghapusnya. 

##### Cara lainnya
```dart
bool isValidPalindrome(String s) {
  // Bersihkan string: hanya huruf dan angka, ubah ke lowercase
  String cleaned = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

  // Dua pointer dari depan dan belakang
  int left = 0;
  int right = cleaned.length - 1;

  while (left < right) {
    if (cleaned[left] != cleaned[right]) {
      return false;
    }
    left++;
    right--;
  }

  return true;
}
```
##### 🔍 Penjelasan Kode:
- ```toLowerCase()``` → Mengubah seluruh huruf ke huruf kecil.
- ```replaceAll(RegExp(r'[^a-z0-9]'), '')``` → Menghapus semua karakter yang bukan huruf atau angka.
- ```while (left < right)``` → Bandingkan karakter dari kiri dan kanan hingga bertemu di tengah.
- Jika ada karakter yang tidak sama → return false.
- Jika semua karakter cocok → return true.



💡 Kapan Digunakan?
- Validasi Input: Menghapus karakter khusus saat memproses input pengguna.
- Manipulasi String: Membersihkan string sebelum diproses lebih lanjut.
- Palindrom Check: Sering digunakan dalam algoritma untuk memeriksa apakah string adalah palindrom, dengan mengabaikan spasi dan tanda baca.