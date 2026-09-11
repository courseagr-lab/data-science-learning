
# Glosarium — 2.1 Framework EDA Sistematis

## Bab 01 — EDA Workflow & Data Verification

- **EDA (Exploratory Data Analysis)** — proses sistematis mengeksplorasi data untuk memahami struktur, karakteristik, pola, dan anomali sebelum modeling.
- **Data profile** — ringkasan "kartu identitas" dataset: jumlah baris/kolom, tipe data, missing value, duplicate.
- **shape** — dimensi dataset (jumlah baris, jumlah kolom).
- **dtypes** — tipe data setiap kolom (numerical, categorical, datetime, dll).
- **Missing value** — nilai yang kosong/hilang pada suatu sel.
- **Duplicate** — baris yang identik atau merepresentasikan entitas yang sama lebih dari sekali.
- **Data cleaning vs EDA** — cleaning memperbaiki data, EDA memahami karakteristik dan pola data yang sudah bersih.

## Bab 02 — Univariate Numerical Analysis

- **Mean** — rata-rata aritmetika; sensitif terhadap outlier.
- **Median** — nilai tengah data terurut; robust terhadap outlier.
- **Min & Max** — nilai terendah dan tertinggi suatu variabel.
- **Range** — selisih max dan min.
- **Standard deviation (std)** — rata-rata jarak observasi terhadap mean.
- **Variance** — kuadrat dari standard deviation.
- **Quantile** — nilai yang membagi data terurut ke proporsi tertentu (skala 0–1).
- **Percentile** — quantile dalam skala 0–100.
- **IQR (Interquartile Range)** — selisih Q3 dan Q1; dasar deteksi outlier (pagar 1.5×IQR).
- **describe()** — ringkasan cepat statistik deskriptif pandas.
- **Distribution** — gambaran bagaimana nilai suatu variabel tersebar.
- **Histogram** — visualisasi frekuensi data per interval (bin).
- **KDE (Kernel Density Estimate)** — versi halus dari histogram, estimasi kurva kepadatan.
- **Skewness** — ukuran asimetri distribusi (simetris, right-skewed, left-skewed).
- **Multimodal distribution** — distribusi dengan lebih dari satu puncak, indikasi campuran subpopulasi.
- **Suspicious values** — nilai tidak masuk akal berdasarkan logika domain, bukan hanya statistik.

## Bab 03 — Univariate Categorical Analysis

- **Frequency count** — jumlah kemunculan mentah tiap kategori.
- **value_counts()** — method pandas untuk menghitung frekuensi kategori.
- **Relative frequency** — proporsi/persentase tiap kategori terhadap total.
- **Dominant category** — kategori dengan frekuensi tertinggi (mode kategorikal).
- **Rare category** — kategori dengan frekuensi sangat rendah (umumnya <1–5%).
- **Cardinality** — jumlah nilai unik suatu variabel kategorikal.
- **Count plot** — bar chart otomatis untuk frekuensi kategori.

## Bab 04 — Bivariate Numerical Analysis

- **Scatter plot** — visualisasi pasangan dua variabel numerik sebagai titik-titik.
- **Positive/Negative relationship** — arah hubungan naik-bersama atau berlawanan arah.
- **Linear vs Non-linear relationship** — hubungan berbentuk garis lurus vs melengkung/kompleks.
- **Clustering/Pattern** — titik-titik yang mengelompok, indikasi subpopulasi tersembunyi.
- **Bivariate outlier** — observasi anomali berdasarkan kombinasi dua variabel, bukan nilai individual.
- **Pearson correlation coefficient (r)** — ukuran kekuatan & arah hubungan linear (−1 s.d. +1).
- **Correlation vs causation** — korelasi tidak membuktikan sebab-akibat; waspadai confounding variable.

## Bab 05 — Bivariate Categorical-Numerical Analysis

- **Group statistics** — mean/median suatu variabel numerik dihitung per kelompok kategorikal (`groupby`).
- **Boxplot per group** — perbandingan Q1/median/Q3/whisker/outlier antar kelompok.
- **Violin plot** — boxplot + KDE, menampilkan bentuk penuh distribusi per kelompok.
- **Outlier antar kelompok** — pagar IQR dihitung terpisah per kelompok, bukan global.

## Bab 06 — Bivariate Categorical Analysis

- **Crosstab (`pd.crosstab()`)** — tabel silang frekuensi dua variabel kategorikal.
- **Proportion table** — crosstab yang dinormalisasi (`normalize='index'/'columns'/'all'`).
- **Stacked bar chart** — visualisasi komposisi kategori bertumpuk.
- **Conditional distribution** — distribusi satu variabel diberikan (given) kategori tertentu variabel lain.
- **Pola asosiasi** — perbedaan berarti pada conditional distribution antar kategori, menandakan hubungan.
- **Dominasi kombinasi kategori** — satu sel crosstab yang mendominasi/sangat jarang muncul.

## Bab 07 — Correlation and Multicollinearity

- **Correlation matrix** — tabel korelasi Pearson untuk semua pasangan fitur numerik sekaligus.
- **Correlation heatmap** — visualisasi correlation matrix dengan intensitas warna.
- **Multicollinearity** — dua atau lebih fitur prediktor saling berkorelasi tinggi (informasi redundan).
- **VIF (Variance Inflation Factor)** — ukuran kuantitatif tingkat multicollinearity suatu fitur.
- **Feature redundancy** — keputusan mempertahankan/menggabung fitur yang tumpang tindih informasinya.

## Bab 08 — Multivariate EDA

- **Pairplot** — grid scatter plot untuk semua pasangan variabel numerik sekaligus.
- **Hue** — parameter pewarnaan berdasarkan kategori untuk menambah dimensi ketiga pada plot.
- **Multi-level groupby** — pengelompokan berdasarkan dua/tiga variabel kategorikal sekaligus.
- **Interaction effect** — hubungan dua variabel yang berubah tergantung level variabel ketiga.
- **Simpson's Paradox** — pola agregat berbeda (bahkan berlawanan) dengan pola di dalam subkelompok.

## Bab 09 — Residual, Outlier, and Anomaly Analysis

- **Outlier vs Anomaly** — outlier adalah konsep statistik; anomaly adalah konsep domain/bisnis.
- **Contextual outlier** — nilai wajar dalam satu konteks, anomali dalam konteks lain.
- **Residual** — selisih nilai aktual dan nilai prediksi/ekspektasi dari suatu pola hubungan.
- **Error vs fenomena nyata** — keputusan inti: apakah anomali adalah kesalahan data atau kejadian valid.

## Bab 10 — Target Distribution and Class Imbalance

- **Target variable** — kolom yang diprediksi model klasifikasi.
- **Majority/Minority class** — kelas dengan observasi terbanyak/tersedikit pada target.
- **Class imbalance ratio** — rasio jumlah majority terhadap minority class.
- **Mild/Moderate/Severe imbalance** — tingkat keparahan imbalance berdasarkan proporsi minority.
- **Accuracy paradox** — accuracy tinggi menyesatkan pada data imbalanced (naive majority prediction).
- **Naive baseline accuracy** — accuracy model yang selalu memprediksi majority class.

## Bab 11 — Hypothesis-Driven EDA

- **Observation** — pernyataan faktual mentah tentang data.
- **Insight** — observation yang sudah diberi makna/konteks.
- **Hypothesis** — pernyataan spesifik dan dapat diuji/difalsifikasi.
- **Null hypothesis (H0)** — baseline "tidak ada efek/perbedaan" yang diuji untuk ditolak.
- **Alternative hypothesis (H1)** — pernyataan yang diduga benar berdasarkan temuan EDA.
- **Hipotesis statistik vs bisnis** — pembingkaian teknis (parameter terukur) vs bahasa stakeholder.

## Bab 12 — End-to-End EDA Workflow

- **Reproducibility** — notebook dapat dijalankan ulang dari awal dengan hasil identik (seed tetap, path relatif).
- **Kriteria kelengkapan EDA** — checklist objektif penentu kapan EDA dianggap selesai.
- **Temuan–Bukti–Implikasi** — struktur konsisten untuk mendokumentasikan setiap insight EDA.
