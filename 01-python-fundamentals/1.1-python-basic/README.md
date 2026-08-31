# 🐍 Data Science Learning Journey

### Dokumentasi Pembelajaran Terstruktur — Fondasi Python untuk Data Science

![Python](https://img.shields.io/badge/Python-3.x-blue?logo=python&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-orange?logo=jupyter)
![Status](<https://img.shields.io/badge/Fase%201.1%20Python%20Basic-Selesai-success>)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

> Repository ini adalah dokumentasi perjalanan belajar Data Science saya dari nol, disusun berdasarkan roadmap terstruktur 8 fase yang saya rancang sendiri. Setiap materi dibangun dengan pola **penjelasan → implementasi kode → latihan mandiri**, bukan sekadar mengikuti tutorial langkah demi langkah.

---

## 📋 Daftar Isi

- [Tentang Repository](#-tentang-repository)
- [Peta Besar: Roadmap Data Science 2026](#️-peta-besar-roadmap-data-science-2026)
- [Fokus Repository Saat Ini: Fase 1.1](#-fokus-repository-saat-ini-fase-11--python-basic)
- [Struktur Folder](#-struktur-folder)
- [Daftar Materi Lengkap](#-daftar-materi-lengkap)
- [Proyek Highlight](#-proyek-highlight-capstone)
- [Metodologi Belajar](#️-metodologi-belajar)
- [Skill yang Dikuasai](#-skill-yang-dikuasai)
- [Tools &amp; Requirements](#️-tools--requirements)
- [Cara Menjalankan](#-cara-menjalankan)
- [Progress Tracker](#-progress-tracker)
- [Rencana Selanjutnya](#-rencana-selanjutnya)
- [Tentang Saya](#-tentang-saya)

---

## 📖 Tentang Repository

Repository ini berisi dokumentasi pembelajaran Python fundamental sebagai **fondasi** menuju kompetensi Data Scientist. Berbeda dari repo latihan pada umumnya, setiap notebook di sini disusun dengan standar yang konsisten:

- 🎯 **Tujuan Pembelajaran** yang terukur di setiap materi
- 📚 **Penjelasan konseptual** (bukan cuma sintaks) — termasuk *kenapa* suatu konsep penting, bukan cuma *bagaimana* memakainya
- 💻 **Implementasi kode dengan komentar** pada setiap contoh
- ⚠️ **Kesalahan umum** yang sengaja disorot di titik-titik yang biasanya menjebak pemula (floating point precision, mutable default argument, shared reference, dll)
- 🛠️ **Latihan mandiri** di akhir setiap materi, dengan batasan eksplisit: setiap latihan **hanya** memakai konsep yang sudah diajarkan sampai titik itu — tidak ada forward-reference ke materi yang belum dipelajari
- ✅ **Checklist kesiapan** sebelum lanjut ke materi berikutnya

Pendekatan ini dipandu secara terstruktur menggunakan AI sebagai mentor pembelajaran (Claude), dengan saya sebagai pengambil keputusan atas scope, urutan, dan validasi tiap materi — bukan sekadar meng-copy jawaban.

---


## 🎯 Fokus Repository Saat Ini: Fase 1.1 — Python Basic

Dalam Fase 1, materi Python sendiri dipecah jadi 3 tingkat dengan batas yang sengaja dijaga ketat, supaya setiap tingkat benar-benar tuntas sebelum naik level:

```
┌─────────────────────────────────────┐
│      1.1 PYTHON BASIC  ← Anda di sini│
├─────────────────────────────────────┤
│ Syntax & Variables                   │
│ Primitive Data Types                 │
│ List / Tuple / Set / Dictionary      │
│ Mutability & Identity                │
│ Conditional & Loops                  │
│ Functions, Scope & Lambda            │
│ File I/O, CSV & JSON                 │
│ Basic Data Processing                │
│ Integration Projects                 │
└──────────────────┬────────────────────┘
                    ▼
┌─────────────────────────────────────┐
│       1.2 PYTHON INTERMEDIATE        │
│  Comprehension · Generator · OOP     │
│  Exception Handling · Modules        │
│  Virtual Environment · Testing       │
└──────────────────┬────────────────────┘
                    ▼
┌─────────────────────────────────────┐
│        1.3 PYTHON ADVANCED           │
│  Decorator · Custom Context Manager  │
│  Advanced OOP · Async · Profiling    │
└──────────────────┬────────────────────┘
                    ▼
          NumPy → Pandas → Data Cleaning
```

**Yang sengaja TIDAK dibahas di level ini** (baru masuk di level berikutnya): *list/dict comprehension, generator, OOP/class, exception handling (`try/except`), custom context manager, dan manipulasi DataFrame*. Pembatasan ini disengaja — tujuannya membuktikan pemahaman Python murni terlebih dahulu, sebelum tools yang lebih powerful (Pandas dkk.) "menyembunyikan" logika di baliknya.

---

## 📂 Struktur Folder

```
data-science-learning/
├── 01-python-fundamentals/
│   └── 1.1-python-basic/
│       └── notebooks/
│           ├── 02_numeric_string_boolean.ipynb
│           ├── 03_list.ipynb
│           ├── 04_tuple_and_set.ipynb
│           ├── 05_dictionary.ipynb
│           ├── 06_mutability_and_identity.ipynb
│           ├── 07_conditional_statements.ipynb
│           ├── 08_loops.ipynb
│           ├── 09_functions.ipynb
│           ├── 10_scope_lambda_and_function_pitfalls.ipynb
│           ├── 11_file_io_and_context_manager.ipynb
│           ├── 12_csv_and_json.ipynb
│           ├── 13_python_data_processing_fundamentals.ipynb
│           ├── 14_mini_project_book_catalog.ipynb
│           ├── 15_mini_project_csv_processor.ipynb
│           └── 16_python_basic_review_and_assessment.ipynb
└── README.md
```

---

## 📚 Daftar Materi Lengkap

### 🔤 Tipe Data Dasar

| #  | Notebook                   | Topik Utama                                                                                               |
| -- | -------------------------- | --------------------------------------------------------------------------------------------------------- |
| 02 | `numeric_string_boolean` | int/float, operator aritmatika, floating point precision, string methods, f-string, boolean, truthy/falsy |

### 🧱 Struktur Data

| #  | Notebook          | Topik Utama                                                                           |
| -- | ----------------- | ------------------------------------------------------------------------------------- |
| 03 | `list`          | Ordered & mutable collection, indexing/slicing, CRUD, sorting                         |
| 04 | `tuple_and_set` | Immutable collection, tuple unpacking, set operations (union/intersection/difference) |
| 05 | `dictionary`    | Key-value pair,`.get()` vs `[]`, nested dict, list of dictionaries                |

### 🔍 Konsep Inti (Sumber Bug Tersembunyi)

| #  | Notebook                    | Topik Utama                                                           |
| -- | --------------------------- | --------------------------------------------------------------------- |
| 06 | `mutability_and_identity` | Object reference, shared reference bug, shallow copy,`==` vs `is` |

### 🔀 Control Flow

| #  | Notebook                   | Topik Utama                                                           |
| -- | -------------------------- | --------------------------------------------------------------------- |
| 07 | `conditional_statements` | if/elif/else, logical operators, nested condition, ternary expression |
| 08 | `loops`                  | for/while,`range()`, `enumerate()`, break/continue, loop-else     |

### ⚙️ Function & Scope

| #  | Notebook                               | Topik Utama                                                                  |
| -- | -------------------------------------- | ---------------------------------------------------------------------------- |
| 09 | `functions`                          | Parameter vs argument, default value, return vs print, single responsibility |
| 10 | `scope_lambda_and_function_pitfalls` | Local/global scope, lambda,**mutable default argument bug**            |

### 📁 I/O & Format Data

| #  | Notebook                        | Topik Utama                                                   |
| -- | ------------------------------- | ------------------------------------------------------------- |
| 11 | `file_io_and_context_manager` | `open()`, file modes, `with` statement, text processing   |
| 12 | `csv_and_json`                | Modul`csv`/`json`, DictReader/DictWriter, type conversion |

### 🧩 Sintesis & Proyek Terapan

| #  | Notebook                                | Topik Utama                                                               |
| -- | --------------------------------------- | ------------------------------------------------------------------------- |
| 13 | `python_data_processing_fundamentals` | Pola*filter → transform → aggregate → sort*, sintesis materi 02–12  |
| 14 | `mini_project_book_catalog`           | **Proyek CRUD** katalog buku — scaffold-only, tanpa solusi         |
| 15 | `mini_project_csv_processor`          | **Proyek pipeline data** CSV kotor → bersih → hasil, tanpa Pandas |
| 16 | `python_basic_review_and_assessment`  | Review, concept-check, coding assessment, final challenge terintegrasi    |

---

## 🏆 Proyek Highlight (Capstone)

Tiga notebook terakhir (14–16) sengaja dirancang **tanpa kode solusi** — hanya spesifikasi, kerangka function, dan checklist. Ini adalah bagian yang paling merepresentasikan kemampuan sesungguhnya:

- **📚 Book Catalog System** (`14`) — Program CRUD lengkap (create, read, update, delete, sort) untuk katalog buku, dengan validasi data dan penanganan kasus data tidak ditemukan.
- **📊 CSV Data Processor** (`15`) — Pipeline pemrosesan data 8 tahap (*read → validate → clean → transform → filter → aggregate → sort → export*) pada dataset CSV yang sengaja dibuat kotor (missing value, tipe data salah), murni Python tanpa Pandas.
- **✅ Final Assessment** (`16`) — Tantangan akhir terintegrasi: memproses `list of dictionaries` bermasalah menjadi ringkasan bisnis, menggabungkan seluruh skill dari 15 notebook sebelumnya.

---

## 🛠️ Metodologi Belajar

Setiap notebook mengikuti struktur konsisten yang dirancang untuk pembelajaran aktif, bukan bacaan pasif:

1. **Tujuan Pembelajaran** — target kompetensi yang terukur
2. **Isi Materi** — penjelasan konseptual (bullet point) + implementasi kode dengan komentar baris-per-baris
3. **Kenapa Ini Penting** — konteks nyata, menghindari belajar dalam ruang hampa
4. **Kesalahan Umum** — jebakan spesifik yang disorot secara eksplisit (dibuktikan dengan kode, bukan cuma disebutkan)
5. **Latihan** — dikerjakan mandiri, dengan batasan ketat: hanya memakai konsep yang sudah diajarkan sampai titik tersebut
6. **Checklist Kesiapan** — self-assessment jujur sebelum lanjut

Untuk konsep yang sulit dibayangkan secara tekstual (struktur dictionary, object reference, shared reference bug), materi dilengkapi **visualisasi diagram** untuk mempercepat pemahaman intuitif.

---

## ✅ Skill yang Dikuasai

- [X] Tipe data primitif & operator (termasuk floating point precision)
- [X] Empat struktur data koleksi (list, tuple, set, dictionary) beserta use-case masing-masing
- [X] Konsep mutability, object reference, dan perbedaan `==` vs `is`
- [X] Control flow (conditional & loop) termasuk pola-pola idiomatik (loop-else, ternary)
- [X] Function design: parameter/argument, scope, lambda, dan jebakan mutable default argument
- [X] File I/O dengan context manager (`with`) sebagai standar aman
- [X] Membaca & menulis CSV/JSON, termasuk kesadaran type conversion
- [X] Pola pemrosesan data manual: filter → transform → aggregate → sort
- [X] Membangun program CRUD dan pipeline data dari requirement, tanpa tutorial

---

## ⚙️ Tools & Requirements

- **Python** 3.x
- **Jupyter Notebook** / JupyterLab / VS Code (dengan ekstensi Jupyter)
- **Tidak ada dependency eksternal** — seluruh materi murni memakai Python standard library (`csv`, `json`)

```bash
# Cek versi Python
python --version

# Install Jupyter (jika belum ada)
pip install notebook
```

---

## 🚀 Cara Menjalankan

```bash
# 1. Clone repository
git clone https://github.com/[username]/data-science-learning.git
cd data-science-learning

# 2. Jalankan Jupyter Notebook
jupyter notebook

# 3. Buka folder berikut, jalankan notebook secara berurutan (02 → 16)
# 01-python-fundamentals/1.1-python-basic/notebooks/
```

> 💡 Notebook dirancang berurutan — tiap materi membangun di atas konsep sebelumnya. Disarankan dijalankan sesuai nomor urut, terutama untuk notebook 13–16 yang bersifat sintesis.

---

## 📊 Progress Tracker

**Fase 1.1 — Python Basic**

- [X] 02 — Numeric, String, Boolean
- [X] 03 — List
- [X] 04 — Tuple & Set
- [X] 05 — Dictionary
- [X] 06 — Mutability & Identity
- [X] 07 — Conditional Statements
- [X] 08 — Loops
- [X] 09 — Functions
- [X] 10 — Scope, Lambda & Function Pitfalls
- [X] 11 — File I/O & Context Manager
- [X] 12 — CSV & JSON
- [X] 13 — Data Processing Fundamentals
- [X] 14 — Mini Project: Book Catalog
- [X] 15 — Mini Project: CSV Processor
- [X] 16 — Review & Assessment

**Selanjutnya**

- [ ] Fase 1.2 — Python Intermediate (Comprehension, OOP, Exception Handling)
- [ ] Fase 1.3 — Python Advanced (Decorator, Async, Profiling)
- [ ] NumPy — Komputasi Numerik
- [ ] Pandas — Manipulasi Data
- [ ] Fase 1.7 — Data Cleaning Framework

---

## 🔭 Rencana Selanjutnya

Setelah fondasi Python Basic ini tuntas, langkah berikutnya sesuai roadmap:

1. **Python Intermediate** — comprehension, generator, OOP (mengubah pola function-based di notebook 14–15 menjadi `class`), exception handling, virtual environment, dan unit testing dengan `pytest`
2. **Python Advanced** — decorator, custom context manager, async/parallel processing, profiling
3. **NumPy & Pandas** — di sinilah seluruh pola manual (filter, transform, aggregate manual di notebook 13) akan terasa jauh lebih ringkas lewat vectorization dan API `DataFrame`
4. **Data Cleaning Framework** — proyek capstone Fase 1 penuh: pipeline cleaning end-to-end pada dataset dunia nyata

---

## 👤 Tentang Saya

**[Nama Anda]**
📧 [email@example.com] · 💼 [LinkedIn] · 🐙 [GitHub]

Sedang membangun karier di Data Science, dimulai dari fondasi yang kuat dan terdokumentasi. Repository ini adalah bukti proses belajar yang konsisten — bukan cuma tujuan akhirnya.

---

## 📄 Lisensi

Konten pembelajaran ini dibagikan di bawah lisensi [MIT](LICENSE) — bebas dipakai sebagai referensi belajar, dengan atribusi.

---

<p align="center">
  <i>⭐ Jika repo ini membantu perjalanan belajar Anda, silakan beri bintang!</i>
</p>
