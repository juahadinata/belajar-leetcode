## Big O Notasi

##### 🔤 Asal-usul Huruf "O"
Huruf "O" pada Big O Notation berasal dari kata "Order" dalam bahasa Inggris.
Jadi, saat kita menulis O(n), artinya kita sedang mengatakan:
<div style="margin-left: 40px;">
  Algoritma ini memiliki order of growth sebesar n" atau "Ini secepat/selambat urutan pertumbuhan n".
</div> 

##### 📜 Sejarah Singkat
- Edmund Landau, seorang matematikawan asal Jerman, memperkenalkan notasi ini pada awal 1900-an untuk analisis fungsi dalam matematika.
- Notasi ini lalu diadopsi oleh ilmuwan komputer, karena cocok untuk menggambarkan pertumbuhan kompleksitas algoritma.
- Seiring waktu, muncul juga variasi lain:

    - Big O: untuk batas atas (worst-case)

    - Big Ω (Omega): untuk batas bawah (best-case)

    - Big Θ (Theta): untuk batas tepat (average-case atau tight bound)

##### 🧠 Kenapa Huruf Lain Tidak Dipakai?
- Huruf "O" sudah lazim dan diterima sebagai standar sejak lama.
- Karena kita ingin bicara soal "Order of growth", maka "O" menjadi pilihan alami.
- Huruf lain seperti "G" (growth), atau "C" (complexity) mungkin saja bisa digunakan, tapi tidak sejelas dan seumum "O".

##### 🎯 Kesimpulan
Kita pakai O dalam Big O notation karena:
- Berasal dari kata Order (urutan atau tingkatan pertumbuhan).
- Merupakan konvensi matematika yang sudah digunakan sejak dulu.
- Standar dan mudah dipahami dalam dunia algoritma dan analisis performa.

Notasi Big O digunakan dalam ilmu komputer untuk menggambarkan kompleksitas algoritma, yaitu seberapa cepat atau lambat suatu algoritma berjalan relatif terhadap ukuran input-nya (biasanya di lambangkan dengan ```n``` ). Kita bisa mengelompokkan algoritma berdasarkan tingkatan kompleksitas waktunya (time complexity) seperti berikut :

|       O      | Nama     | Penjelasan              | Contoh              |
| :----------- | :------- | :-----------------------| :------------------ |
| **O(1)** | `Konstanta` | Waktu eksekusi tidak berubah walaupun input bertambah | Akses elemen array langsung (```arr[5]```) |
| **O(log n)** | `Logaritmik` | Bertambah lambat saat input meningkat. Biasanya ditemukan dalam algoritma **divide and conquer**. | Binary search |
| **O(n)** | `Linear` | Waktu bertambah sebanding dengan jumlah input | Loop satu kali dari awal sampai akhir |
| **O(n log n)** | `Linear-logaritmik` | Gabungan linear dan logaritmik | Merge Sort, Quick Sort (rata-rata) |
|**O(n<sup>2</sup>)**| `Kuadratik` | Bertambah sangat cepat saat input bertambah, biasanya dari nested loop | Bubble Sort, Selection Sort  |
|**O(n<sup>3</sup>)**| `Kubik` | Tambah lebih parah lagi, jarang dipakai kecuali untuk **brute force**  | Triple nested loop  |
|**O(2<sup>n</sup>)**| `Eksponensial` | Pertumbuhan **sangat cepat**, tidak praktis untuk input besar. | Rekursi Fibonacci tanpa memorization |
|**O(n!)**| `Faktorial` | Sangat tidak efisien, hanya digunakan untuk masalah kecil. | Permutasi semua kemungkinan (Misal brute force TSP) | 


###### Contoh Visual (Input vs Waktu Eksekusi):
```dart
n = 10
O(1)       -> 1
O(log n)   -> 3
O(n)       -> 10
O(n log n) -> 30
O(n²)      -> 100
O(2^n)     -> 1024
O(n!)      -> 3628800
```
---

#### 1. O(1)

Contoh sederhana:
```dart
int getFirstItem(List<int> list) {
  return list[0];
}
```
Fungsi diatas mengambil **elemen pertama** dari List.
- Mau list-nya 5 elemen atau 5 juta, waktu untuk `list[0]` tetap konstan.
- Itulah O(1) -> waktu konstan atau **"constant time"**
- Bukan berarti hanya satu operasi dijalankan.
- Tapi jumlah operasinya tidak bertambah seiring pertambahan data.

Contoh lain:
```dart
int sumFirstThree(List<int> list) {
  return list[0] + list[1] + list[2];
}
``` 
- Ini juga `O(1)` meskipun ada 3 operasi, karena tidak tergantung jumlah elemen list.

---

#### 2. O(n)
`O(n)` disebut **"Linear time"** - artinya: 
<div style="margin-left: 30px;">Waktu eksekusi bertambah sebanding dengan ukuran input (n). </div>
Jadi, makin banyak data --> makin banyak waktu yang dibutuhkan 

**Contoh sederhana:**

```dart
int findItem(List<int> list, int target) {
  for (int item in list) {
    if (item == target) return item;
  }
  return -1;
}
```
- Disini, kita mengecek satu persatu dari awal sampai akhir.
- Kalau target-nya ada si akhir list (atau tidak ada sama sekali), kita akan menelusuri semua elemen
- Maka waktu eksekusi = **jumlah elemen yang dicek** --> sebanding dengan `n` 

##### Misalnya:
- Kalau list ada 10 elemen → bisa sampai 10 langkah.
- Kalau 1000 elemen → bisa sampai 1000 langkah.
- Setiap penambahan data membuat waktu proses tambah panjang.
- Itu sebabnya dinamakan "linear" (seperti garis lurus pertumbuhannya).

Contoh lain:
```dart
int total(List<int> data) {
  int sum = 0;
  for (int value in data) {
    sum += value;
  }
  return sum;
}
```
- Kita menjumlahkan semua isi list.
- Harus mengakses elemen satu persatu.
- Maka ini juga `O(n)` karena kita mengakses semua elemen dalam list.


##### Dibandingkan `O(1)`:
| Ukuran List (n) | Waktu O(1) | Waktu untuk O(n)|
| :-----------    | :--------- | :-------------- |
| 10              | Tetap      | 10 Langkah      |
| 100             | Tetap      | 100 Langkah     |
| 1000            | Tetap      | 1000 Langkah    |

##### Inti dari O(n):
- Waktu eksekusi bergantung pada jumlah data (n).

- Biasanya muncul saat:
        - Loop sederhana (for, while)
        - Proses menelusuri data dari awal sampai akhir
        - Operasi seperti: mencari, menjumlahkan, mencetak semua data
---

#### 3. O(log n)
##### *Apa itu `O(log n)` ?*
`O(log n)` disebut **"logaritmic time"**.
Artinya: 
<div style="margin-left: 40px;">
  Waktu seksekusi bertambah sangat lambat, bahkan ketika ukuran data `n` membesar drastis.
</div> 

Karena setiap langkah **memotong jumlah data menjadi setengah**

##### *Analogi Kasar*
Bayangkan kita nyari nama di buku telepon yang setebal 1000 halaman.
- Jika kita Cek satu per satu dari halaman 1 sampai 1000 → itu O(n)
- Tapi, kalau kita langsung buka tengah buku → lalu setengahnya lagi → lalu setengah dari setengah → dst...

Nah, itu yang disebut logarithmic.

##### *Contoh nyata: Binary Search*
```dart
int binarySearch(List<int> list, int target) {
  int low = 0;
  int high = list.length - 1;

  while (low <= high) {
    int mid = (low + high) ~/ 2;
    if (list[mid] == target) {
      return mid;
    } else if (list[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return -1;
}
```
- List harus sudah diurutkan
- Kita tidak periksa semua elemen
- Kita buang setengah data di setiap langkah
    - Cek tengah → target lebih besar → buang setengah kiri
    - Cek tengah lagi → buang lagi setengah
    - Dan seterusnya...

##### Misalnya:
| Ukuran List (n) | Langkah Maks O(log<sub>2</subs> n) | 
| :-----------    | :--------- |
| 8               | 3          | 
| 16              | 4          | 
| 32              | 5          |
| 1.000.0         | ~20        |

Jadi, meskipun datanya 1 juta, paling -paling cuma butuh sekitar 20 langkah untuk menemukan targetnya. 

##### Dibandingkan `O(n)`:
| n (Ukuran Data) | O(n) Langkah | O(log n) Langkah |
| :-----------    | :---------   | :-------------- |
| 10              | 10           | ~ 4     |
| 100             | 100          | ~ 7     |
| 1.000           | 1.000        | ~ 10    |
| 1.000.000       | 1.000.000    | ~ 20    |

##### *Inti dari O(log n)*:
- Kita memotong masalah jadi setengah setiap kali.
- Pertumbuhannya sangat lambat walau datanya sangat besar.
- Biasanya muncul di algoritma seperti:
        - Binary Search
        - Struktur data seperti Binary Search Tree, Heap
        - Beberapa algoritma sorting & pencarian canggih

#### 4. O(n log n)
##### *Apa itu `O(n log n)` ?*
`O(log n)` berarti:
<div style="margin-left: 40px;">
  Waktu mengerjakan pekerjaan sebanyak n, dan setiap pekerjaan butuh waktu log n.
</div> 
Atau bisa juga dikatakan:
<div style="margin-left: 40px;">
  Kita melakukan log n sebanyak n kali.
</div> 

##### *Analogi Kasar*
Banyangkan kamu punya 1000 file, dan setiap file perlu kamu kelompokkan lalu sortir isinya secara bertahap (pakai pembagian dua).
- Proses mengelompokkan 1000 file tersebut -> `n`
- Tapi untuk menyortir satu kelompok, kita terus bagi-bagi jadi dua sampai beres -> itulah `log n`.

Jadi hasil akhirnya: `n log n`.
##### *Contoh Paling Umum : Merge Sort dan Quick Sort (average case)*
Contoh `Merge Sort` : 
```dart
List<int> mergeSort(List<int> list) {
  if (list.length <= 1) return list;

  int mid = list.length ~/ 2;
  List<int> left = mergeSort(list.sublist(0, mid));
  List<int> right = mergeSort(list.sublist(mid));

  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int i = 0, j = 0;
  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      result.add(left[i++]);
    } else {
      result.add(right[j++]);
    }
  }
  result.addAll(left.sublist(i));
  result.addAll(right.sublist(j));
  return result;
}
```

- `mergesort` membagi list jadi dua → dua lagi → dua lagi → itu `log n`.
- Di setiap level pembagian, kita menggabungkan semua elemen  → itu `n`.
- Total waktu `n log n`.

##### *Perbandingan :*
| n (Ukuran Data) | O(n) Langkah | O(log n) Langkah | O(n log n) Langkah|
| :-----------    | :---------   | :--------------- | :-----------------|
| 10              | 10           | ~ 4              | ~ 40              |
| 100             | 100          | ~ 7              | ~ 700             |
| 1.000           | 1.000        | ~ 10             | ~ 10.000          |
| 1.000.000       | 1.000.000    | ~ 20             | ~ 20.000.000     | 

##### *Kapan Muncul `O(n log n)` ?*

Biasanya pada:
- Algoritma sorting yang efisien:
  - *Merge Sort*
  - *Quick Sort (average case)*
  - *Heap Sort*
- Beberapa algoritma divide and conquer lain
- Beberapa algoritma pencarian pola string

##### *Inti dari `O(n log n)` :*
- Kita punya banyak data(`n`)
- Tapi cara kerjanya **melibatkan pembagian logaritmik** (`log n`)
- Jadi jauh **lebih cepat dari  O(n²)**, tapi masih lebih **berat dari O(n)**

#### 5. O(n²)

##### *Apa Itu O(n²)?*
`O(n²)` artinya:
    Jumlah langkah atau operasi akan tumbuh sebanding dengan kuadrat jumlah data.

Kalau n = 10, jumlah operasi bisa sampai 100.
Kalau n = 1000, bisa sampai 1 juta!

##### *Analogi Simpel*
Bayangkan kamu punya 10 orang, dan setiap orang harus ngobrol dengan semua orang lainnya.
- Orang 1 ngobrol dengan 9 orang
- Orang 2 juga ngobrol dengan 9 (beberapa tumpang tindih)

Total percakapan mendekati: `n × n`
Itulah `O(n²)`!

##### *Contoh Kasus Nyata*
  1. Nested loop (loop dalam loop):
  ```dart
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      // total operasi = n * n
      print('$i, $j');
    }
  }
  ```
  2. Algoritma Bubble Sort:
    - Setiap elemen dibandingkan dengan elemen lainnya
    - Total perbandingan: hampir n²
  3. Mencari pasangan yang cocok dalam data (brute force):
    - Cek semua kombinasi dua-dua

##### 🎯 *Contoh lain: Mencari Semua Pasangan Angka yang Jumlahnya Tertentu*
Misalnya:
Diberikan array A = [1, 2, 3, 4, 5], cari semua pasangan (a, b) yang jumlahnya 6.
Ini solusi brute force:

```dart
void main() {
  List<int> data = [1, 2, 3, 4, 5];
  int target = 6;

  for (int i = 0; i < data.length; i++) {
    for (int j = i + 1; j < data.length; j++) {
      if (data[i] + data[j] == target) {
        print('Pasangan: (${data[i]}, ${data[j]})');
      }
    }
  }
}
```
💡 Penjelasan
- Dua loop: for i dan for j
- Loop luar = n kali
- Loop dalam ≈ n kali juga (walaupun mulai dari i + 1, tetap proporsional)
- Total operasi = sekitar n × n = O(n²)

🧾 Output:
```
Pasangan: (1, 5)
Pasangan: (2, 4)
```
##### *Perbandingan sederhana:*
| n               | O(n)         | O(n log n)      | O(n²)         |
| :-----------    | :---------   | :-------------- | :-------------|
| 10              | 10           | ~ 33            | 100           |
| 100             | 100          | ~ 700           | 10.000        |
| 1.000           | 1.000        | ~ 10.000        | 1.000.000     |

##### *Ciri-Ciri Kode O(n²)*
- Punya loop dalam loop (nested)
- Biasanya coba semua pasangan kemungkinan
- Cocok hanya untuk data kecil
##### *Kapan Terjadi?*
Algoritma dengan O(n²) muncul di:
- Sorting sederhana: Bubble sort, Insertion sort, Selection sort
- Brute-force matching
- Graf traversal tanpa optimasi
- Algoritma dasar dalam kompetisi coding (kadang memang diminta pakai brute force dulu)