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
