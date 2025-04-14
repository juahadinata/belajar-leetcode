## Contoh kode

```dart
List<int> twoSum(List<int> nums, int target) {
  Map<int, int> terlihat = {};

  for (int i = 0; i < nums.length; i++) {
    int pelengkap = target - nums[i];

    if (terlihat.containsKey(pelengkap)) {
      return [terlihat[pelengkap]!, i];
    }

    terlihat[nums[i]] = i;
  }
  // return null;  // ini juga boleh
  throw Exception(
      'Tidak ditemukan dua indeks yang jika dijumlahkan hasilnya sama dengan target');
}


```

## Penjelasan Algoritma

 - #### Deklarasi Map

    ```dart
        Map<int, int> terlihat = {};
    ```
    Digunakan untuk melacak angka yang sudah di proses beserta indeksnya

 - #### Iterasi List
    - Looping melalui setiap elemen di List ```nums```.
    - Hitung pelengkap sebagai ```target - nums[i]```.
    - Cek apakah ```pelengkap``` sudah ada di Map ```terlihat```. jika ya, kembalikan indeks yang ditemukan.

 - #### Penyimpanan Elemen
    Jika tidak ditemukan, simpan angka dan indeks saat ini
    ke Map ```terlihat``` untuk referensi di iterasi beriktnya.
 - #### Kompleksitas Wkatu
    - Waktu: O(n) karena hanya melalui satu kali iterasi melalui List
    - Memori: O(n) untuk menyimpan elemen dalam Map

## Contoh Output
```dart
    void main() {
        List<int> nums = [3, 2, 4, 7, 11, 15];
        int target = 9;

        try {
            List<int> hasil = twoSum(nums, target);

            print('$target => ada pada Indeks: $hasil');
            print('$target = ${nums[hasil[0]]} + ${nums[hasil[1]]}');
        } catch (e) {
            print(e);
        }
    } 
```

Jika nums =[3, 2, 4, 7, 11, 15] 
dan target = 9, maka hasilnya adalah:

#### output :
    9 => ada pada Indeks: [1, 3]
    9 = 2 + 7

---

Dalam algoritma **Two Sum**, selama pasangan angka yang sesuai belum ditemukan, 
loop akan terus berjalan dan nilai pelengkap akan berubah-ubah di setiap iterasi.

##### 🌀 Proses Iterasi dan Perubahan pelengkap
Misalkan kita punya:
```
List<int> nums = [3, 2, 4, 7, 11, 15];
int target = 9;
```
Algoritma melakukan iterasi sebagai berikut:

*Iterasi ke-0:*
  ```
  nums[0] = 3
  pelengkap = 9 - 3 = 6
  terlihat = {3: 0} → Tidak ditemukan kunci 6, 
  lanjut ke iterasi berikutnya.
  ```
*Iterasi ke-1:*
  ```
  nums[1] = 2
  pelengkap = 9 - 2 = 7
  terlihat = {3: 0, 2: 1} → Tidak ditemukan kunci 7, 
  lanjut ke iterasi berikutnya.
  ```
*Iterasi ke-2:*
  ```
  nums[2] = 4
  pelengkap = 9 - 4 = 5
  terlihat = {3: 0, 2: 1, 4: 2} → Tidak ditemukan kunci 5, 
  lanjut ke iterasi berikutnya.
  ```
*Iterasi ke-3:*

  ```
  nums[3] = 7
  pelengkap = 9 - 7 = 2
  terlihat = {3: 0, 2: 1, 4: 2} → ✅ Kunci 2 ditemukan!
  Return [1, 3] (indeks dari angka 2 dan 7).
  ```
  ---

##### 🔄 Perubahan Pelengkap di Setiap Iterasi

Selama belum ditemukan, looping terus berjalan dan ```pelengkap``` selalu berubah-ubah.

Karena:

  Setiap elemen pada list diambil secara berurutan.
  Setiap elemen baru menghasilkan nilai ```pelengkap``` yang berbeda berdasarkan rumus:

      pelengkap = target - nums[i];

  Proses ini terus berjalan hingga ditemukan angka ```pelengkap``` di dalam Map, atau hingga iterasi selesai.

#### 💡 Kesimpulan
  ```pelengkap``` akan terus berubah di setiap iterasi!
  ```pelengkap``` dihitung ulang untuk setiap elemen dalam list.
  Loop berhenti begitu menemukan ```pelengkap``` yang cocok atau saat list habis.