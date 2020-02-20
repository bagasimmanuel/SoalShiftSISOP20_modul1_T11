# SoalShiftSISOP20_modul1_T11
## Nomor 1
### Satu a
/* Foto
Berdasarkan gambar diatas, kami menggunakan awk, dengan syntax penjelasan syntax antara lain
1. awk -F ","  --> dengan , sebagai separator daripada column yang ada di csv.
2. FNR > 1  --> yang berartikan mulai dari Row ke 2, dikarenakan row 1 merupakan judul seperti Row Id, Product name, dll
3. seen[$13]+=$NF --> yang berartikan bahwa variable seen, yang memiliki index $13 (Antara lain West, South,Central,East) dan +=NF
                      yang digunakan untuk menjumlahkan semua profit
4. END{for (i in seen) print i, print seen[i]} --> Setelah proses awk selesai (END) maka akan dijalankan perintah untuk                                              melakukan perintah print i yaitu nama dari Region, beserta profit tiap tiap Region
5. Sample-Superstore.csv --> Nama File
6. sort -gk2 --> Sort secara angka generic, pada kolom ke 2, yaitu kolom proft,
7. awk `FNR < 2{print $1}` --> Melakukan proses print nama Region yang berada di posisi teratas (Profit Terkecil)
