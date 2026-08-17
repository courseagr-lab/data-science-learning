# 3.1-sklearn-framework

## Target Pembelajaran

* Menjelaskan **kenapa** scikit-learn dirancang dengan API yang seragam (bukan cuma menghafal bahwa "API-nya seragam")
* Membedakan **parameter** vs **hyperparameter** vs **fitted attribute**
* Menjelaskan perbedaan estimator, transformer, predictor — beserta method yang dimiliki masing-masing
* Menjelaskan apa yang benar-benar terjadi secara internal saat `.fit()` dipanggil
* Mengenali konvensi penamaan scikit-learn (`_` di akhir nama atribut, dsb.)
* Menjalankan dan **membongkar isi** sebuah workflow ML sederhana, bukan sekadar menjalankannya




Setelah materi ini, kamu harus bisa:

* Menjelaskan kenapa `train_test_split` adalah langkah  **pertama** , bukan langkah setelah preprocessing
* Memahami fungsi tiap parameter: `test_size`, `train_size`, `random_state`, `shuffle`, `stratify`
* Menjelaskan beda training set, validation set, dan testing set — dan kenapa kadang butuh tiga-tiganya
* Mengenali gejala data leakage yang terjadi akibat split yang salah urutan
* Memutuskan kapan harus pakai `stratify` dan kapan tidak
* Menjalankan dan membandingkan efek tiap parameter secara langsung di kode
