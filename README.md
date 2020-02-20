# SoalShiftSISOP20_modul1_T11
## Nomor 1
### Satu a
/* Foto

1. `awk -F ","`  --> dengan , sebagai separator daripada column yang ada di csv.
2. `FNR > 1 ` --> yang berartikan mulai dari Row ke 2, dikarenakan row 1 merupakan judul seperti Row Id, Product name, dll
3. `seen[$13]+=$NF` --> yang berartikan bahwa variable seen, yang memiliki index $13 (Antara lain West, South,Central,East) dan +=NF
                      yang digunakan untuk menjumlahkan semua profit
4. `END{for (i in seen) print i, print seen[i]}` --> Setelah proses awk selesai (END) maka akan dijalankan perintah untuk melakukan perintah print i yaitu nama dari Region, beserta profit tiap tiap Region
5. `Sample-Superstore.csv` --> Nama File
6. `sort -gk2` --> Sort secara angka generic, pada kolom ke 2, yaitu kolom proft,
7. `awk FNR < 2{print $1}` --> Melakukan proses print nama Region yang berada di posisi teratas (Profit Terkecil)


### Satu b
/* Foto

1. `awk -F ","` --> separator ","
2. `-v a=$satua` --> Menyimpan nilai satua, ke dalam variable a
3. `NR>1` --> Start dari row ke 2
4. `if(match($13, a)seen[$11]+=NF)END` --> Jika Kolom ke 13, match dengan variable a (NAMA REGION) maka buat array dengan index state, dan tambahkan profit dari tiap state,
5. `for(i in seen) printf "%s","%f"\n,i , seen[i]` --> Untuk tiap i (State) print state dan juga jumlahlahnya
6. `Sample-Superstore.csv` --> Nama File
7. `sort -g -t "," -k2` --> Sort berdasarkan generic number, dan juga dengan separator "," (Dikarenakan pada nomor 5 di print dengan separator "," dan dan juga sort pada kolom ke 2(setelah di separate))
8. `awk -F "," 'FNR < 3 {printf "%s ", $1}'` --> Print 2 nama teratas pada data yang telah disort

### satuc

/* Foto deklarasi variable

1. `c1= echo "$satub" | awk -F " " '{printf "%s ",$1}'` --> Gunakan output echo satub dan Separate dengan separator " ", kemudian ambil $1
2. `c1= echo "$satub" | awk -F " " '{printf "%s ",$2}'` --> Gunakan output echo satub dan Separate dengan separator " ", kemudian ambil $2

/* Foto state Pertama

1. `awk -F ","` --> separator ","
2. `-v x1=$c1` --> Deklarasi variable x1
3. `NR>1` --> Start dari row ke 2
4. `{if(match($11, x1))seen[$17]+=$NF}` --> Untuk setiap State yang cocok, maka buat array dengan index product name dan tambahkan profil tiap Product
5. `END{for(i in seen) printf "%s@%f\n", i,seen[i]}'` --> Untuk setiap product name, print Product name dan juga profit total dengan separator "@"
6. `Sample-Superstore.csv` --> Nama File
7. `| sort -g -t "@" -k2 |` --> Sort dengan separator "@", sehingga kolom ke dua adalah angka, kemudian sort kolom kedua dengan sort -g
8. `awk -F "@" 'NR < 11 {print $1}'` --> Dengan Separator @, Print 10 Nama barang teratas (setelah sort) ($1) yaitu Nama Barang itu  

/* Foto state kedua

1. `c1= echo "$satub" | awk -F " " '{printf "%s ",$1}'` --> Gunakan output echo satub dan Separate dengan separator " ", kemudian ambil $1
2. `c1= echo "$satub" | awk -F " " '{printf "%s ",$2}'` --> Gunakan output echo satub dan Separate dengan separator " ", kemudian ambil $2

/* Foto state Pertama

1. `awk -F ","` --> separator ","
2. `-v x2=$c2` --> Deklarasi variable x2
3. `NR>1` --> Start dari row ke 2
4. `{if(match($11, x2))seen[$17]+=$NF}` --> Untuk setiap State yang cocok, maka buat array dengan index product name dan tambahkan profil tiap Product
5. `END{for(i in seen) printf "%s@%f\n", i,seen[i]}'` --> Untuk setiap product name, print Product name dan juga profit total dengan separator "@"
6. `Sample-Superstore.csv` --> Nama File
7. `| sort -g -t "@" -k2 |` --> Sort dengan separator "@", sehingga kolom ke dua adalah angka, kemudian sort kolom kedua dengan sort -g
8. `awk -F "@" 'NR < 11 {print $1}'` --> Dengan Separator @, Print 10 Nama barang teratas (setelah sort) ($1) yaitu Nama Barang itu
