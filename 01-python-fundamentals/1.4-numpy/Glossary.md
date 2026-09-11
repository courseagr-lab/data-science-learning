
# Glosarium — NumPy

Kumpulan istilah, fungsi, dan konsep yang digunakan sepanjang roadmap NumPy (bab 1–13), disusun per topik mengikuti urutan materi.

## Daftar Isi

- [1. Array Basics](#1-array-basics)
- [2. Indexing &amp; Slicing](#2-indexing--slicing)
- [3. Boolean Masking &amp; Filtering](#3-boolean-masking--filtering)
- [4. Broadcasting](#4-broadcasting)
- [5. Vectorization](#5-vectorization)
- [6. Aggregation &amp; Axis](#6-aggregation--axis)
- [7. Mathematical Operations](#7-mathematical-operations)
- [8. Linear Algebra](#8-linear-algebra)
- [9. Copy vs View](#9-copy-vs-view)
- [10. Random](#10-random)
- [11. Linear Regression](#11-linear-regression)

---

## 1. Array Basics

| Istilah                                                  | Penjelasan                                                                                            |
| -------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| **NumPy**                                          | Pustaka Python untuk komputasi numerik, menyediakan struktur data`ndarray` berperforma tinggi.      |
| **`ndarray`**                                    | Struktur data array multidimensi milik NumPy; bersifat homogen (satu tipe data untuk seluruh elemen). |
| **`np.array()`**                                 | Membuat array dari struktur data Python (list/tuple).                                                 |
| **`np.zeros()` / `np.ones()` / `np.full()`** | Membuat array berisi nol, satu, atau nilai konstan tertentu.                                          |
| **`np.arange()`**                                | Membuat rangkaian angka berdasarkan`step` (jarak antar elemen) tertentu.                            |
| **`np.linspace()`**                              | Membuat rangkaian angka berdasarkan jumlah elemen (`num`) yang merata dari titik awal ke akhir.     |
| **`shape`**                                      | Tuple yang menunjukkan ukuran array pada setiap dimensi (baris, kolom, dst).                          |
| **`ndim`**                                       | Jumlah dimensi (axis) suatu array.                                                                    |
| **`size`**                                       | Total jumlah elemen dalam array.                                                                      |
| **`dtype`**                                      | Tipe data elemen dalam array (int, float, bool, dll), memengaruhi konsumsi memori.                    |
| **`.astype()`**                                  | Mengonversi array ke`dtype` lain.                                                                   |

## 2. Indexing & Slicing

| Istilah                              | Penjelasan                                                                                                  |
| ------------------------------------ | ----------------------------------------------------------------------------------------------------------- |
| **Indexing**                   | Mengakses elemen tunggal array berdasarkan posisinya.                                                       |
| **Positive/negative indexing** | Indexing dari kiri mulai`0`, atau dari kanan mulai `-1`.                                                |
| **Slicing**                    | Mengambil rentang elemen dengan format`start:end:step` (`end` bersifat eksklusif).                      |
| **Basic indexing**             | Kategori indexing berupa slice tunggal atau integer sederhana; hasilnya selalu**view**.               |
| **View**                       | Array baru yang berbagi memori data dengan array asal; modifikasi pada salah satunya memengaruhi yang lain. |

## 3. Boolean Masking & Filtering

| Istilah                                             | Penjelasan                                                                                                                                     |
| --------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| **Boolean array**                             | Array berisi nilai`True`/`False`, hasil dari operator perbandingan (`>`, `<`, `==`, dst).                                            |
| **Boolean masking**                           | Menggunakan boolean array sebagai index untuk memfilter elemen (`arr[arr > 0]`).                                                             |
| **Advanced indexing**                         | Kategori indexing (boolean mask, fancy indexing) yang selalu menghasilkan**copy**, bukan view.                                           |
| **Multiple conditions (`&`, `\|`, `~`)** | Operator bitwise untuk menggabungkan beberapa kondisi boolean; wajib dibungkus tanda kurung per kondisi.                                       |
| **`np.where()`**                            | Dengan 3 argumen: memilih nilai berdasarkan kondisi (ternary vectorized). Dengan 1 argumen: mengembalikan indeks posisi yang memenuhi kondisi. |
| **Outlier**                                   | Nilai yang menyimpang jauh dari mayoritas data.                                                                                                |
| **IQR (Interquartile Range)**                 | `Q3 − Q1`; dipakai untuk mendeteksi outlier berdasarkan rentang persentil 25–75.                                                           |

## 4. Broadcasting

| Istilah                       | Penjelasan                                                                                                                                 |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| **Broadcasting**        | Mekanisme NumPy yang memungkinkan operasi antar-array dengan`shape` berbeda, dengan "meregangkan" array yang lebih kecil secara virtual. |
| **Shape compatibility** | Dua dimensi dianggap kompatibel jika nilainya sama, atau salah satunya bernilai`1`.                                                      |
| **Shape mismatch**      | Error (`ValueError`) yang muncul ketika dua array tidak memenuhi aturan broadcasting.                                                    |

## 5. Vectorization

| Istilah                          | Penjelasan                                                                                                                  |
| -------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| **Vectorization**          | Menjalankan operasi pada seluruh elemen array sekaligus, tanpa loop eksplisit.                                              |
| **Vectorized operation**   | Operasi yang dijalankan sebagai satu instruksi tunggal terhadap keseluruhan array.                                          |
| **Interpreter overhead**   | Biaya komputasi tambahan yang muncul di setiap iterasi loop Python murni (cek tipe, alokasi objek, dst).                    |
| **`np.clip()`**          | Membatasi nilai array dalam rentang`[batas_bawah, batas_atas]`.                                                           |
| **`timeit`**             | Modul Python untuk mengukur waktu eksekusi kode secara presisi (rata-rata dari banyak pengulangan).                         |
| **Decorator (`@timer`)** | Fungsi yang membungkus fungsi lain untuk menambahkan perilaku tambahan (mis. pengukuran waktu) tanpa mengubah kode aslinya. |

## 6. Aggregation & Axis

| Istilah                               | Penjelasan                                                                                                                                        |
| ------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Aggregation**                 | Meringkas banyak nilai menjadi satu nilai representatif (`sum`, `mean`, `std`, dst).                                                        |
| **`axis`**                    | Parameter yang menentukan dimensi mana yang diringkas;`axis=0` menyusuri baris (hasil per kolom), `axis=1` menyusuri kolom (hasil per baris). |
| **`argmin()` / `argmax()`** | Mengembalikan**posisi (indeks)** dari nilai minimum/maksimum, bukan nilainya.                                                               |
| **`keepdims`**                | Parameter yang mempertahankan dimensi yang diagregasi sebagai ukuran`1`, agar tetap kompatibel untuk broadcasting.                              |

## 7. Mathematical Operations

| Istilah                                       | Penjelasan                                                                                   |
| --------------------------------------------- | -------------------------------------------------------------------------------------------- |
| **`np.abs()`**                        | Nilai absolut tiap elemen.                                                                   |
| **`np.sqrt()`**                       | Akar kuadrat; menghasilkan`nan` untuk input negatif.                                       |
| **`np.square()`**                     | Kuadrat tiap elemen (setara`** 2`).                                                        |
| **`np.exp()`**                        | Menghitung$e^x$.                                                                           |
| **`np.log()`**                        | Logaritma**natural** (basis $e$) — bukan basis 10.                                  |
| **`np.log10()` / `np.log1p()`**     | Logaritma basis 10;`log1p(x)` menghitung `log(1+x)` secara stabil untuk nilai kecil/nol. |
| **`np.round()`**                      | Pembulatan dengan strategi*round half to even* (banker's rounding) untuk kasus `.5`.     |
| **`np.floor()` / `np.ceil()`**      | Pembulatan terarah (selalu ke bawah / selalu ke atas).                                       |
| **`np.maximum()` / `np.minimum()`** | Perbandingan**element-wise** antar dua array (bukan aggregation).                      |
| **ReLU**                                | Fungsi aktivasi$f(x)=\max(0,x)$, diimplementasikan dengan `np.maximum(0, x)`.            |
| **Skewness**                            | Kemiringan distribusi data; sering dikurangi dengan log transformation.                      |
| **MSE / RMSE / MAE**                    | Metrik error:*Mean Squared Error*, akarnya (*Root MSE*), dan *Mean Absolute Error*.    |
| **Sigmoid / Softmax**                   | Fungsi yang mengubah nilai menjadi probabilitas, memanfaatkan`np.exp()`.                   |

## 8. Linear Algebra

| Istilah                                                  | Penjelasan                                                                                                |
| -------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| **Vector (row/column)**                            | Array 1D; secara eksplisit dapat dibentuk sebagai row vector`(1,n)` atau column vector `(n,1)`.       |
| **Matrix**                                         | Array 2D, direpresentasikan dengan`shape (baris, kolom)`.                                               |
| **Transpose (`.T`)**                             | Menukar posisi baris dan kolom suatu matrix.                                                              |
| **Dot product**                                    | Jumlah hasil kali elemen berpasangan antar dua vector, menghasilkan skalar.                               |
| **Matrix multiplication (`np.matmul()`, `@`)** | Perkalian matrix sesungguhnya (baris dikalikan kolom); syarat: kolom matrix pertama = baris matrix kedua. |
| **Hadamard product (`*`)**                       | Perkalian**element-wise** antar dua array — berbeda dari matrix multiplication.                    |
| **Norm (`np.linalg.norm()`)**                    | Mengukur "panjang" vector; default L2 norm (Euclidean).                                                   |
| **`np.linalg.solve()`**                          | Menyelesaikan sistem persamaan linear$Ax=b$ secara langsung dan stabil.                                 |
| **Matrix inverse (`np.linalg.inv()`)**           | Matrix yang jika dikalikan matrix asal menghasilkan matrix identitas.                                     |
| **Singular matrix**                                | Matrix tanpa invers (determinan = 0).                                                                     |
| **Eigenvalue / Eigenvector**                       | Skalar$\lambda$ dan vector $v$ yang memenuhi $Av=\lambda v$; fondasi PCA.                           |

## 9. Copy vs View

| Istilah                          | Penjelasan                                                                                                                   |
| -------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| **Reference**              | Dua variabel menunjuk ke objek array yang**sama persis** (hasil dari `=` biasa).                                     |
| **View**                   | Objek array baru yang berbagi memori data dengan array lain (hasil basic slicing).                                           |
| **Copy (`.copy()`)**     | Array baru yang datanya sepenuhnya independen dari array asal.                                                               |
| **`.base`**              | Atribut yang menunjuk ke array pemilik data asli;`None` jika array memiliki datanya sendiri.                               |
| **`np.shares_memory()`** | Fungsi untuk memverifikasi apakah dua array berbagi lokasi memori.                                                           |
| **Silent bug**             | Bug yang tidak memicu error, namun menghasilkan nilai salah secara diam-diam (umum terjadi akibat view yang tidak disadari). |

## 10. Random

| Istilah                                                           | Penjelasan                                                                                                                  |
| ----------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| **Pseudo-random**                                           | Bilangan "acak" yang sebenarnya dihasilkan algoritma deterministik berdasarkan seed.                                        |
| **`np.random.seed()`**                                    | Mengatur titik awal generator angka acak agar hasilnya reproducible.                                                        |
| **Reproducibility**                                         | Kemampuan mengulang eksperimen dengan hasil yang identik.                                                                   |
| **`rand()` / `randn()` / `randint()` / `choice()`** | Menghasilkan angka acak uniform, normal, integer, atau memilih dari array yang sudah ada.                                   |
| **`replace=True` / `replace=False`**                    | Sampling dengan pengembalian (item bisa terpilih berulang) vs tanpa pengembalian (setiap item hanya sekali).                |
| **Bootstrap resampling**                                    | Teknik statistik yang mengambil sampel berulang**dengan** pengembalian dari satu dataset.                             |
| **`np.random.default_rng()`**                             | API modern (Generator) yang direkomendasikan NumPy, menggantikan`np.random.seed()` untuk state acak yang lebih eksplisit. |

## 11. Linear Regression

| Istilah                        | Penjelasan                                                                                   |
| ------------------------------ | -------------------------------------------------------------------------------------------- |
| **Feature matrix (X)**   | Matrix input model, satu baris per sampel, satu kolom per fitur.                             |
| **Target (y)**           | Nilai yang ingin diprediksi model.                                                           |
| **Intercept**            | Konstanta$\beta_0$ pada model regresi; dihitung dengan menambahkan kolom `1` pada `X`. |
| **Normal equation**      | Rumus closed-form$\beta=(X^TX)^{-1}X^Ty$ untuk menghitung koefisien regresi linear.        |
| **Residual**             | Selisih antara nilai aktual dan nilai prediksi ($y - \hat{y}$).                            |
| **Closed-form solution** | Solusi yang dapat dihitung langsung dalam satu rumus, tanpa iterasi.                         |

---

*Disusun mengikuti roadmap NumPy bab 1–13 (Array Basics → Mini Project).*
