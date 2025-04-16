## Penjelasan Algoritma Contains Duplicate 

#### 🧠 Cara Memahami Logika
- Inti dari masalah ini adalah memeriksa keunikan setiap elemen dalam array.
- Jika ada elemen yang pernah muncul sebelumnya, maka array memiliki duplikat.
- Jika semua elemen unik, berarti tidak ada duplikat. 

#### ✅ Strategi Penyelesaian
Ada beberapa pendekatan untuk menyelesaikan masalah ini:

##### 1. Menggunakan Set (Pendekatan Terbaik - O(n))
- Gunakan struktur data Set yang hanya menyimpan elemen unik.
- Saat melakukan iterasi, jika elemen yang sedang dicek sudah ada di Set, berarti ada duplikasi → kembalikan true.
- Jika iterasi selesai tanpa menemukan duplikat → kembalikan false.

- Kenapa Memakai Set?
    - Operasi contains() pada Set berjalan dalam waktu O(1), sehingga solusi ini sangat efisien.

##### 2. Menggunakan Sorting (O(n log n))
- Sort array terlebih dahulu.
- Setelah diurutkan, jika ada duplikat, pasti akan berada bersebelahan.
- Cek apakah ada elemen yang sama pada posisi yang berdekatan.
- Jika ya, kembalikan true; jika tidak, kembalikan false.

    Kelebihan:
        - Mudah dipahami dan diimplementasikan.

    Kekurangan:
        - Sorting memerlukan waktu O(n log n), sehingga tidak seefisien pendekatan menggunakan Set.


##### 3. Menggunakan `Map (O(n))`
- Gunakan Map untuk melacak frekuensi kemunculan setiap elemen.
- Jika suatu elemen muncul lebih dari satu kali, langsung kembalikan true.
- Jika tidak ada yang muncul lebih dari sekali, kembalikan false.
    Kelebihan:
    - Cepat dan efisien untuk memeriksa frekuensi.

    Kekurangan:
    - Memerlukan memori tambahan sebesar `O(n)`.

---

#### 🚀 Kode dalam Dart

##### ✅ Pendekatan 1: Menggunakan ` Set (Paling Efisien - O(n)`)
```dart
bool containsDuplicate(List<int> nums) {
  Set<int> seen = {};  // Set untuk menyimpan elemen unik
  
  for (int num in nums) {
    if (seen.contains(num)) return true;  // Jika elemen sudah ada, kembalikan true
    seen.add(num);  // Tambahkan elemen ke dalam Set
  }
  
  return false;  // Jika tidak ditemukan duplikat
}

void main() {
  print(containsDuplicate([1, 2, 3, 1]));  // Output: true
  print(containsDuplicate([1, 2, 3, 4]));  // Output: false
  print(containsDuplicate([1, 1, 1, 3, 3, 4, 2, 4, 2]));  // Output: true
}
```
##### Penjelasan:

- Set hanya bisa menyimpan nilai unik, sehingga ketika kita menemukan elemen yang sudah ada di dalam Set, artinya elemen tersebut duplikat.
- Waktu eksekusi `O(n)` karena kita hanya melakukan iterasi satu kali.
---

##### ✅ Pendekatan 2: Menggunakan Sorting (O(n log n))
```dart
bool containsDuplicateSort(List<int> nums) {
  nums.sort(); // Urutkan array terlebih dahulu

  for (int i = 1; i < nums.length; i++) {
    if (nums[i] == nums[i - 1]) {
      return true; // Bandingkan dengan elemen sebelumnya
    }
  }

  return false;
}
```
---
##### ✅ Pendekatan 3: Menggunakan Map (O(n))

```dart
bool containsDuplicateMap(List<int> nums) {
  Map<int, bool> frequency = {}; // Map untuk melacak elemen

  for (int num in nums) {
    if (frequency.containsKey(num)) {
      return true; // Jika elemen sudah ada, duplikat ditemukan
    }
    frequency[num] = true; // Tambahkan elemen ke Map
  }

  return false; // Tidak ada duplikat
}
```


