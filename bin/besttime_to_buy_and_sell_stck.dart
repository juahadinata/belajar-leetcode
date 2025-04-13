int maxProfit(List<int> prices) {
  int minPrice = prices[0];
  int maxProfit = 0;

  for (int price in prices) {
    if (price < minPrice) minPrice = price;
    print('min price: $minPrice'); // pengganti log
    bool isLebihrendah = price < minPrice;
    print(isLebihrendah); // pengganti log
    if (price - minPrice > maxProfit) maxProfit = price - minPrice;
    print('$maxProfit = $price - $minPrice'); // pengganti log
  }

  return maxProfit;
}

void main() {
  print(maxProfit([7, 1, 5, 3, 6, 4])); // Output: 5
}


/* 
Best Time to Buy and Sell Stock adalah masalah yang sering muncul dalam coding interview, 
terutama untuk menguji pemahaman tentang array dan logika greedy. 
Mari saya jelaskan konsep dan cara memahaminya dengan mudah:

💡 Deskripsi Soal
    Diberikan sebuah array prices di mana prices[i] menunjukkan harga saham pada hari ke-i. 
    Tugasnya adalah menemukan keuntungan maksimum dengan membeli dan menjual saham hanya sekali. 
    Kita harus membeli saham sebelum menjualnya.

Aturan Utama:

    Hanya boleh membeli dan menjual sekali.
    Tidak diperbolehkan menjual sebelum membeli.
    Jika tidak ada keuntungan yang bisa didapatkan, hasilnya adalah 0.
    Contoh:

    Input: prices = [7, 1, 5, 3, 6, 4]
    Output: 5

Penjelasan: Beli di harga 1 dan jual di harga 6 untuk keuntungan 6 - 1 = 5.
    🧠 Cara Memahami Logika
        Inti dari masalah ini adalah mencari selisih terbesar antara harga beli yang paling murah dan harga jual di hari setelahnya.

        Gunakan pendekatan greedy:
        Greedy berarti mengambil keputusan terbaik pada setiap langkah untuk mencapai solusi optimal secara keseluruhan.
        Dalam kasus ini, kita ingin selalu membeli di harga terendah yang ditemukan sejauh ini 
        dan menjual di harga tertinggi setelahnya.

    ✅ Strategi Penyelesaian
        Mulailah dengan mengasumsikan bahwa harga pada hari pertama adalah harga beli terendah.
        Saat kita memeriksa harga di setiap hari:
        Jika harga saat ini lebih murah dari harga beli terendah sebelumnya, maka perbarui harga beli terendah.
        Jika selisih antara harga saat ini dan harga beli terendah lebih besar dari keuntungan maksimum sebelumnya, 
        maka perbarui keuntungan maksimum.
        Kenapa Tidak Perlu Nested Loop?

        Kita tidak perlu memeriksa semua pasangan harga secara manual.
        Satu kali iterasi (O(n)) sudah cukup karena kita terus melacak harga beli terendah dan keuntungan maksimum yang mungkin.

    💻 Contoh Step-by-Step
        Misalkan kita memiliki array:

            prices = [7, 1, 5, 3, 6, 4]
            Mulai dengan:
            minPrice = 7
            maxProfit = 0
            Iterasi:

        Hari 1 (Harga 7):
            Harga ini menjadi harga beli terendah: minPrice = 7
            Tidak ada keuntungan, jadi maxProfit = 0

        Hari 2 (Harga 1):
            Harga ini lebih rendah dari minPrice, jadi update minPrice = 1
            Masih belum ada penjualan, jadi maxProfit = 0

        Hari 3 (Harga 5):
            Selisih = 5 - 1 = 4 (lebih besar dari maxProfit sebelumnya)
            Update maxProfit = 4

        Hari 4 (Harga 3):
            Selisih = 3 - 1 = 2 (lebih kecil dari maxProfit, tidak perlu update)

        Hari 5 (Harga 6):
            Selisih = 6 - 1 = 5 (lebih besar dari maxProfit)
            Update maxProfit = 5

        Hari 6 (Harga 4):
            Selisih = 4 - 1 = 3 (lebih kecil dari maxProfit, abaikan)
            Hasil akhir: maxProfit = 5

🚀 Kode dalam Dart

int maxProfit(List<int> prices) {
  int minPrice = prices[0];  // Harga beli terendah
  int maxProfit = 0;         // Keuntungan maksimum

  for (int price in prices) {
    if (price < minPrice) minPrice = price;  // Cari harga terendah
    if (price - minPrice > maxProfit) maxProfit = price - minPrice;  // Cari keuntungan maksimum
  }

  return maxProfit;
}

void main() {
  print(maxProfit([7, 1, 5, 3, 6, 4])); // Output: 5
  print(maxProfit([7, 6, 4, 3, 1]));    // Output: 0 (tidak ada keuntungan)
}

🔥 Catatan Penting
Greedy Approach sangat cocok karena keputusan lokal terbaik (membeli di harga terendah 
dan menjual di harga tertinggi setelahnya) menghasilkan solusi global terbaik.
  Waktu Eksekusi: O(n) (hanya sekali loop)
  Penggunaan Memori: O(1) (hanya dua variabel digunakan)
*/