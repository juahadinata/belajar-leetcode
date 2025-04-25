```dart
int maxSubArray(List<int> nums) {
  int currentSum = nums[0];
  int maxSum = nums[0];

  for (int i = 0; i < nums.length; i++) {
    var crSum = currentSum; // untuk log
    // currentSum = currentSum > 0 ? currentSum + nums[i] : nums[i];  // cara lain
    currentSum = (currentSum + nums[i]).clamp(nums[i], double.infinity).toInt();
    print('currentSum : $currentSum = $crSum + ${nums[i]}'); // untuk log
    maxSum = maxSum > currentSum ? maxSum : currentSum;
    print('maxSum : $maxSum'); // untuk log
  }
  return maxSum;
}
```



Baik, mari kita bahas method .clamp() secara lebih mendetail, khususnya dalam konteks kode ini:
```dart
currentSum = (currentSum + nums[i]).clamp(nums[i], double.infinity).toInt();
```
##### 🧩 Apa itu .clamp()?

Dalam Dart, method .clamp() digunakan untuk membatasi nilai suatu angka agar berada di dalam rentang tertentu. Sintaksnya:
```dart
num clamp(num lowerLimit, num upperLimit)
    lowerLimit: Batas bawah yang diperbolehkan.
    upperLimit: Batas atas yang diperbolehkan.
```
- Jika nilai lebih kecil dari batas bawah, maka akan dikembalikan lowerLimit.
- Jika nilai lebih besar dari batas atas, maka akan dikembalikan upperLimit.

✅ Contoh Sederhana
```dart
void main() {
    int value = 10;

    print(value.clamp(5, 15));   // Output: 10 (Karena 10 ada di antara 5 dan 15)
    print(value.clamp(12, 20));  // Output: 12 (Karena 10 < 12, jadi kembalikan batas bawah)
    print(value.clamp(5, 8));    // Output: 8 (Karena 10 > 8, jadi kembalikan batas atas)
}
```
Intinya:

- Jika nilai berada di dalam rentang, maka nilai tersebut dikembalikan apa adanya.
- Jika nilai keluar dari rentang, maka akan dikembalikan nilai batas yang terdekat.

##### Penggunaan Spesifik dalam Algoritma Kadane Dalam kode ini:
```dart
currentSum = (currentSum + nums[i]).clamp(nums[i], double.infinity).toInt(); 
```
1. ```(currentSum + nums[i])```
    - Menjumlahkan elemen saat ini dengan jumlah subarray sebelumnya.
    - Misalnya, jika sebelumnya currentSum = 4 dan elemen sekarang adalah -1, maka hasilnya menjadi 4 + (-1) = 3.
        
2. ```.clamp(nums[i], double.infinity)```

    - Fungsi ```.clamp()``` di sini memiliki peran penting:

    - ```nums[i]``` sebagai batas bawah.
    double.infinity sebagai batas atas (tidak ada batasan atas karena tak terhingga).

    - Artinya, nilai hasil penjumlahan minimal harus sebesar elemen saat ini. 
    - Jika hasil penjumlahan lebih kecil dari elemen saat ini, 
      maka kita reset jumlah subarray dan memulai subarray baru dari elemen saat ini.

    ##### 👉 Mengapa?
    - Karena jika jumlah subarray sebelumnya menjadi negatif, maka menambahkannya ke elemen saat ini hanya akan memperburuk hasil. 
    - Lebih baik memulai subarray baru dari elemen ini.

3. .toInt()
    - Method .clamp() mengembalikan num (karena hasilnya bisa berupa double atau int).
    - Karena kita bekerja dengan integer, maka gunakan .toInt() untuk mengubah hasil menjadi int.
      
    ##### 💡 Simulasi Langkah per Langkah
    Misalkan kita memiliki array berikut:
    ```dart
    List<int> nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4];
    ```
    *Mari kita lihat bagaimana metode ini bekerja:*

    - Iterasi 1: ```-2```
    ```dart
      currentSum = nums[0] = -2
      maxSum = -2
    ```
    - Iterasi 2: ```1```
    ```dart
      (currentSum + nums[i]) = (-2 + 1) = -1
      .clamp(1, infinity) → -1 lebih kecil dari 1, jadi gunakan batas bawah 1.
      currentSum = 1
      maxSum = max(-2, 1) = 1
    ```
    - Iterasi 3: -3
    ```dart
      (currentSum + nums[i]) = (1 + -3) = -2
      .clamp(-3, infinity) → -2 lebih besar dari -3, jadi hasil tetap -2.
      currentSum = -2
      maxSum = max(1, -2) = 1
    ```

    - Iterasi 4: 4

    ```dart
      (currentSum + nums[i]) = (-2 + 4) = 2
      .clamp(4, infinity) → 2 lebih kecil dari 4, jadi gunakan batas bawah 4.
      currentSum = 4
      maxSum = max(1, 4) = 4
    ```
    - Iterasi 5: -1
    ```dart
      (currentSum + nums[i]) = (4 + -1) = 3
      .clamp(-1, infinity) → 3 lebih besar dari -1, jadi hasil tetap 3.
      currentSum = 3
      maxSum = max(4, 3) = 4
    ```
    - Iterasi 6: 2
    ```dart
      (currentSum + nums[i]) = (3 + 2) = 5
      .clamp(2, infinity) → 5 lebih besar dari 2, hasil tetap 5.
      currentSum = 5
      maxSum = max(4, 5) = 5
    ```
    - Iterasi 7: 1
    ```dart
      (currentSum + nums[i]) = (5 + 1) = 6
      .clamp(1, infinity) → 6 lebih besar dari 1, hasil tetap 6.
      currentSum = 6
      maxSum = max(5, 6) = 6
    ```
    - Iterasi 8: -5
    ```dart
      (currentSum + nums[i]) = (6 + -5) = 1
      .clamp(-5, infinity) → 1 lebih besar dari -5, hasil tetap 1.
      currentSum = 1
      maxSum = max(6, 1) = 6
    ```
    - Iterasi 9: 4
    ```dart
      (currentSum + nums[i]) = (1 + 4) = 5
      .clamp(4, infinity) → 5 lebih besar dari 4, hasil tetap 5.
      currentSum = 5
      maxSum = max(6, 5) = 6
    ```

##### 📦 Kesimpulan Akhir
- Subarray terbaik yang ditemukan adalah [4, -1, 2, 1] dengan jumlah 6.
- clamp() memastikan bahwa jika penjumlahan sementara menjadi negatif atau lebih kecil dari elemen saat ini, 
- maka subarray akan di-reset. Hal ini membuat algoritma lebih efisien dan bersih dibandingkan harus menulis pernyataan if-else.

##### 🔥 Ringkasan Penting

```(currentSum + nums[i]).clamp(nums[i], double.infinity)``` melakukan dua hal:

- Meneruskan penjumlahan jika hasilnya menguntungkan (lebih besar dari elemen saat ini).
- Memulai ulang subarray dari elemen saat ini jika penjumlahan sebelumnya merugikan (lebih kecil dari elemen tersebut).
