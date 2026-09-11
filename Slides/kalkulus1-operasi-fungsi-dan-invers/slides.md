---
theme: default
title: "Kalkulus 1: Operasi Fungsi & Fungsi Invers"
info: |
  Slide Perkuliahan Kalkulus 1:
  Operasi Aljabar, Komposisi Fungsi, dan Fungsi Invers.
  Desain Hangat (Warm Light), Aksesibel, Rasio 16:10 MacBook.
aspectRatio: 16/10
canvasWidth: 980
colorSchema: 'light'
class: text-left
highlighter: shiki
lineNumbers: false
drawings:
  persist: false
transition: slide-left
layout: cover
background: false
---

<div class="py-12 px-4">
  <div class="badge-warm mb-4">
    <span class="w-2 h-2 rounded-full bg-[#C2542D]"></span>
    MODUL PERKULIAHAN KALKULUS I
  </div>
  
  <h1 class="text-3xl font-extrabold text-[#23272E] tracking-tight leading-tight">
    Operasi Fungsi & Fungsi Invers
  </h1>
  
  <p class="mt-3 text-base text-[#585F6D] max-w-xl leading-relaxed">
    Pendekatan Konseptual & Bedah Soal Terstruktur: Dari Fondasi Aljabar, Ketelitian Domain Alami, Hingga Penerapan pada Turunan
  </p>
  
  <div class="mt-8 flex items-center gap-5 text-xs text-[#585F6D]">
    <div class="flex items-center gap-2">
      <span class="w-2.5 h-2.5 rounded-full bg-[#226343]"></span>
      <span class="font-medium">Kontras Tinggi & Aksesibel (WCAG 2.2 AA)</span>
    </div>
    <div class="flex items-center gap-2">
      <span class="w-2.5 h-2.5 rounded-full bg-[#C2542D]"></span>
      <span class="font-medium">Format Layar MacBook (16:10)</span>
    </div>
  </div>
</div>

<div class="abs-br m-8 text-xs text-[#8C93A0]">
  Gunakan tombol <b>Spasi</b> atau <b>➔</b> untuk berpindah slide
</div>

---
layout: two-cols
---

# Peta Kompetensi & Alur Belajar

Fondasi fungsi yang wajib dikuasai sebelum melangkah ke **Limit**, **Turunan**, dan **Integral**:

<div class="card-warm mb-3">

### 1. Operasi Aljabar & Domain
- Empat operasi aritmetika fungsi real.
- Irisan domain $D_f \cap D_g$ dan syarat penyebut $\neq 0$.
- Jebakan menyederhanakan aljabar vs daerah asal asli.

</div>

<div class="card-warm">

### 2. Komposisi Fungsi ($f \circ g$)
- Konsep mesin pemroses berantai input-output.
- Sifat non-komutatif ($f \circ g \neq g \circ f$).
- Syarat eksistensi dan penentuan domain komposisi.

</div>

::right::

<div class="pl-4 pt-10">

<div class="card-warm mb-3">

### 3. Fungsi Satu-ke-Satu (Injektif)
- Mengapa $f(x)=x^2$ tidak memiliki invers pada $\mathbb{R}$?
- Uji Garis Horizontal (*Horizontal Line Test*).
- Kemonotonan murni dan teknik **Restriksi Domain**.

</div>

<div class="card-warm">

### 4. Fungsi Invers ($f^{-1}$)
- Persamaan pembatalan: $f(f^{-1}(x)) = x$.
- Pertukaran domain dan range: $\text{Dom}(f^{-1}) = \text{Ran}(f)$.
- Geometri simetri cermin $y = x$ & turunan invers.

</div>

</div>

---
layout: center
class: text-center
---

<div class="badge-warm mb-4">BAGIAN 1</div>

# Operasi Aljabar Fungsi & Domain Alami

<p class="text-base text-[#585F6D] max-w-lg mx-auto mt-2">
  Memahami definisi empat operasi aritmetika fungsi serta ketelitian menentukan daerah asal sebelum melakukan penyederhanaan aljabar.
</p>
---
layout: two-cols
---

# 1.1 Definisi 4 Operasi Aljabar

Diberikan fungsi real $f: D_f \to \mathbb{R}$ dan $g: D_g \to \mathbb{R}$.

Operasi aljabar pada setiap titik $x$:

- **Penjumlahan:** $(f+g)(x) = f(x) + g(x)$
- **Pengurangan:** $(f-g)(x) = f(x) - g(x)$
- **Perkalian:** $(f \cdot g)(x) = f(x) \cdot g(x)$
- **Pembagian:** $\left(\frac{f}{g}\right)(x) = \frac{f(x)}{g(x)}$

::right::

<div class="pl-4">

<div class="callout-pine">

### 💡 Prinsip Emas Domain Alami
Operasi fungsi hanya sah jika **kedua fungsi terdefinisi bersama**:

$$
x \in D_f \cap D_g
$$

</div>

Aturan domain operasi:

$$
\begin{aligned}
D_{f+g} &= D_f \cap D_g \\
D_{f-g} &= D_f \cap D_g \\
D_{f \cdot g} &= D_f \cap D_g
\end{aligned}
$$

<div class="callout-terracotta mt-2">

**Syarat Tambahan Pembagian:**

$$
D_{f/g} = (D_f \cap D_g) \setminus \{x \mid g(x) = 0\}
$$

Penyebut sama sekali tidak boleh bernilai nol!

</div>

</div>

---
layout: two-cols
---

# 1.2 Jebakan Fatal: Menyederhanakan vs Domain

Diberikan fungsi rasional:

$$
h(x) = \frac{x^2 - 4}{x - 2}
$$

<div class="callout-terracotta">

### ❌ Kekeliruan Umum Mahasiswa
Mencoret faktor aljabar terlebih dahulu:

$$
h(x) = \frac{(x-2)(x+2)}{x-2} = x + 2
$$

Lalu menyimpulkan domainnya adalah seluruh $\mathbb{R}$. **Ini keliru!**

</div>

::right::

<div class="pl-4">

<div class="callout-pine">

### ✅ Konsep Matematis yang Benar
Domain dievaluasi pada **ekspresi awal**, bukan setelah disederhanakan!

</div>

1. Penyebut awal adalah $x - 2$.
2. Saat $x = 2$, diperoleh bentuk tak tentu $\frac{0}{0}$.
3. Maka domain sebenarnya adalah:

$$
D_h = \mathbb{R} \setminus \{2\} = (-\infty, 2) \cup (2, \infty)
$$

4. Grafik $h(x)$ adalah garis lurus $y = x+2$ yang memiliki **titik berlubang (*hole*)** di $(2, 4)$.

<div class="callout-amber mt-2">

🔗 **Dasar Limit:** Inilah mengapa konsep limit diperlukan: $\lim_{x \to 2} \frac{x^2-4}{x-2} = 4$.

</div>

</div>

---
layout: two-cols
---

# 1.3 Soal 1 (Dasar) — Analisis Daerah Asal

<div class="card-warm mb-3 font-mono text-xs">

**[SOAL 1]** Diberikan dua fungsi real:

$$
f(x) = \sqrt{x+3} \quad \text{dan} \quad g(x) = \sqrt{5-x}
$$

Tentukan aturan rumus dan domain dari:
1. $(f + g)(x)$
2. $\left(\frac{f}{g}\right)(x)$

</div>

### Syarat Akar Real Genap:
Nilai di dalam tanda akar harus tak-negatif ($\ge 0$).

::right::

<div class="pl-4">

### Domain Masing-Masing:

Untuk $f(x) = \sqrt{x+3}$:

$$
x + 3 \ge 0 \implies x \ge -3 \implies D_f = [-3, \infty)
$$

Untuk $g(x) = \sqrt{5-x}$:

$$
5 - x \ge 0 \implies x \le 5 \implies D_g = (-\infty, 5]
$$

<div class="callout-pine mt-3">

### Irisan Domain ($D_f \cap D_g$):

$$
D_f \cap D_g = [-3, \infty) \cap (-\infty, 5] = [-3, 5]
$$

</div>

</div>

---
layout: two-cols
---

# 1.4 Soal 1 — Solusi Penjumlahan & Pembagian

Lanjutan penyelesaian Soal 1:

### (1) Penjumlahan $(f + g)(x)$

Rumus aljabar:

$$
(f + g)(x) = \sqrt{x+3} + \sqrt{5-x}
$$

Karena tidak ada penyebut pembagi:

$$
D_{f+g} = D_f \cap D_g = [-3, 5]
$$

Kedua ujung interval ($-3$ dan $5$) **termasuk** karena $\sqrt{0} = 0$ terdefinisi di $\mathbb{R}$.

::right::

<div class="pl-4">

### (2) Pembagian $\left(\frac{f}{g}\right)(x)$

Rumus aljabar:

$$
\left(\frac{f}{g}\right)(x) = \frac{\sqrt{x+3}}{\sqrt{5-x}} = \sqrt{\frac{x+3}{5-x}}
$$

Syarat penyebut tidak boleh nol:

$$
\sqrt{5-x} \neq 0 \iff 5 - x \neq 0 \iff x \neq 5
$$

Keluarkan titik $x = 5$ dari interval $[-3, 5]$:

$$
D_{f/g} = [-3, 5) = \{x \in \mathbb{R} \mid -3 \le x < 5\}
$$

<div class="callout-amber mt-2">

Ujung kanan menjadi kurung biasa `)` (titik terbuka).

</div>

</div>

---
layout: two-cols
---

# 1.5 Soal 2 (Menengah) — Analisis Titik Kritis

<div class="card-warm mb-3 font-mono text-xs">

**[SOAL 2]** Diberikan fungsi:

$$
f(x) = \frac{x}{x^2-9} \quad \text{dan} \quad g(x) = \sqrt{x-1}
$$

Tentukan aturan rumus dan daerah asal dari $\left(\frac{g}{f}\right)(x)$!

</div>

### 1. Domain Awal Masing-Masing:

Untuk $f(x) = \frac{x}{x^2-9}$:

$$
x^2 - 9 \neq 0 \iff x \neq \pm 3 \implies D_f = \mathbb{R} \setminus \{-3, 3\}
$$

Untuk $g(x) = \sqrt{x-1}$:

$$
x - 1 \ge 0 \iff x \ge 1 \implies D_g = [1, \infty)
$$

::right::

<div class="pl-4">

### 2. Irisan Domain $D_g \cap D_f$:

$$
D_g \cap D_f = [1, \infty) \setminus \{3\} = [1, 3) \cup (3, \infty)
$$

*(Titik $x = -3$ otomatis berada di luar interval $[1, \infty)$).*

<div class="callout-terracotta mt-3">

### Uji Tambahan: Penyebut Utama
Penyebut utama adalah fungsi $f(x)$. Kita wajib menguji syarat:

$$
f(x) \neq 0
$$

</div>

</div>

---
layout: two-cols
---

# 1.6 Soal 2 — Solusi & Domain Akhir

Melanjutkan penyelesaian $\left(\frac{g}{f}\right)(x)$:

### 3. Rumus Aljabar Pembagian:

$$
\left(\frac{g}{f}\right)(x) = \frac{\sqrt{x-1}}{\frac{x}{x^2-9}} = \frac{(x^2-9)\sqrt{x-1}}{x}
$$

Setelah disederhanakan, muncul peubah $x$ di posisi penyebut pecahan.

::right::

<div class="pl-4">

### 4. Uji Nilai Pembuat Nol $f(x)$:

$$
f(x) = 0 \iff \frac{x}{x^2-9} = 0 \iff x = 0
$$

Syarat pembagian mengharuskan $x \neq 0$.

Karena interval irisan awal adalah $[1, 3) \cup (3, \infty)$, nilai $x = 0$ memang **sudah berada di luar interval**.

<div class="callout-pine mt-3">

### Kesimpulan Akhir Domain:

$$
D_{g/f} = [1, 3) \cup (3, \infty) = \{x \in \mathbb{R} \mid x \ge 1, x \neq 3\}
$$

</div>

</div>

---
layout: center
class: text-center
---

<div class="badge-warm mb-4">BAGIAN 2</div>

# Komposisi Fungsi ($f \circ g$)

<p class="text-base text-[#585F6D] max-w-lg mx-auto mt-2">
  Analogi proses berantai, syarat keberadaan komposisi, prosedur penentuan domain rantai, dan dekomposisi fungsi.
</p>
---
layout: two-cols
---

# 2.1 Konsep Mesin Berantai

Komposisi fungsi menggabungkan dua fungsi berurutan: output fungsi pertama menjadi input bagi fungsi kedua.

$$
(f \circ g)(x) = f(g(x))
$$

Dibaca: **"$f$ bundaran $g$"** atau **"$f$ komposisi $g$"**.

<div class="my-4 p-3 bg-white border border-[#E8DFD5] rounded-xl text-xs font-mono text-center shadow-sm">
  x ➔ [Mesin g] ➔ g(x) ➔ [Mesin f] ➔ f(g(x))
</div>

::right::

<div class="pl-4">

<div class="callout-amber">

### ⚠️ Sifat Non-Komutatif
Secara umum dalam aljabar:

$$
(f \circ g)(x) \neq (g \circ f)(x)
$$

Urutan proses sangat mempengaruhi hasil akhir!

</div>

**Contoh Sederhana:**
Misalkan $f(x) = x^2$ dan $g(x) = x + 1$:
- $(f \circ g)(x) = (x+1)^2 = x^2 + 2x + 1$
- $(g \circ f)(x) = x^2 + 1$

Tampak jelas bahwa $(x+1)^2 \neq x^2 + 1$.

</div>

---
layout: two-cols
---

# 2.2 Syarat Eksistensi & Algoritma Domain

Kapan $(f \circ g)$ dijamin dapat dievaluasi?

<div class="callout-navy">

### Syarat Eksistensi Komposisi
Komposisi $(f \circ g)$ terdefinisi jika dan hanya jika **daerah hasil $g$ beririsan dengan daerah asal $f$**:

$$
R_g \cap D_f \neq \emptyset
$$

</div>

Definisi formal daerah asal komposisi:

$$
D_{f \circ g} = \{x \in D_g \mid g(x) \in D_f\}
$$

::right::

<div class="pl-4">

### Prosedur 3 Langkah Menentukan $D_{f \circ g}$:

1. **Langkah 1 (Fungsi Dalam):**
   Syarat input terdefinisi pada fungsi dalam:
   $$x \in D_g$$

2. **Langkah 2 (Fungsi Luar):**
   Syarat output $g(x)$ masuk ke daerah asal $f$:
   $$g(x) \in D_f$$

3. **Langkah 3 (Irisan Akhir):**
   $$D_{f \circ g} = D_g \cap \{x \mid g(x) \in D_f\}$$

</div>

---
layout: two-cols
---

# 2.3 Soal 3 (Menengah) — Rumus & Syarat Dalam

<div class="card-warm mb-3 font-mono text-xs">

**[SOAL 3]** Diketahui dua fungsi:

$$
f(x) = \sqrt{x - 1} \quad \text{dan} \quad g(x) = \frac{2}{x - 3}
$$

Tentukan aturan rumus $(f \circ g)(x)$ dan daerah asal alaminya $D_{f \circ g}$!

</div>

### 1. Menentukan Rumus Aljabar:

$$
\begin{aligned}
(f \circ g)(x) &= f\left(\frac{2}{x-3}\right) = \sqrt{\frac{2}{x-3} - 1} \\
&= \sqrt{\frac{2 - (x - 3)}{x - 3}} = \sqrt{\frac{5 - x}{x - 3}}
\end{aligned}
$$

::right::

<div class="pl-4">

### 2. Langkah 1: Syarat Fungsi Dalam ($g$)
Fungsi dalam adalah $g(x) = \frac{2}{x-3}$.
Penyebut pecahan tidak boleh nol:

$$
x - 3 \neq 0 \iff x \neq 3
$$

Diperoleh himpunan pertama:

$$
x \in \mathbb{R} \setminus \{3\}
$$

<div class="callout-amber mt-4">

Selanjutnya kita tentukan syarat agar $g(x)$ memenuhi daerah asal fungsi luar $f$.

</div>

</div>

---
layout: two-cols
---

# 2.4 Soal 3 — Uji Tanda & Domain Komposisi

Melanjutkan penyelesaian Langkah 2 untuk Soal 3:

### 3. Langkah 2: Syarat $g(x) \in D_f$
Fungsi luar $f(u) = \sqrt{u - 1}$ mengharuskan $u \ge 1$. Maka:

$$
g(x) \ge 1 \iff \frac{2}{x-3} \ge 1 \iff \frac{5 - x}{x - 3} \ge 0
$$

Titik pembuat nol:
- Pembilang: $5 - x = 0 \implies x = 5$
- Penyebut: $x - 3 = 0 \implies x = 3$

::right::

<div class="pl-4">

### 4. Uji Tanda Garis Bilangan:
- Daerah $x < 3$: uji $x = 0 \implies \frac{5}{-3} < 0$ (Negatif)
- Daerah $3 < x \le 5$: uji $x = 4 \implies \frac{1}{1} > 0$ **(Positif ✅)**
- Daerah $x > 5$: uji $x = 6 \implies \frac{-1}{3} < 0$ (Negatif)

Penyelesaian Langkah 2: $3 < x \le 5$.

<div class="callout-pine mt-3">

### Hasil Akhir Domain Komposisi:
Irisan Langkah 1 ($x \neq 3$) dan Langkah 2 ($3 < x \le 5$):

$$
D_{f \circ g} = (3, 5] = \{x \in \mathbb{R} \mid 3 < x \le 5\}
$$

</div>

</div>

---
layout: two-cols
---

# 2.5 Soal 4 (Tantangan) — Komposisi Berulang & Induksi

Diberikan fungsi rasional:

$$
f(x) = \frac{x}{1+x}, \quad x \neq -1
$$

Tentukan pola $(f \circ f)(x)$ dan $(f \circ f \circ f)(x)$!

### Komposisi 2 Kali: $f_2(x) = (f \circ f)(x)$

$$
f_2(x) = \frac{\frac{x}{1+x}}{1 + \frac{x}{1+x}} = \frac{\frac{x}{1+x}}{\frac{1+2x}{1+x}} = \frac{x}{1+2x}
$$

::right::

<div class="pl-4">

### Komposisi 3 Kali: $f_3(x) = f(f_2(x))$

$$
f_3(x) = \frac{\frac{x}{1+2x}}{1 + \frac{x}{1+2x}} = \frac{x}{1+3x}
$$

<div class="callout-navy mt-4">

### Pola Induktif ke-$n$:
Perhatikan keteraturan koefisien penyebut:

$$
f^{(n)}(x) = \underbrace{(f \circ f \circ \dots \circ f)}_{n \text{ kali}}(x) = \frac{x}{1 + nx}
$$

</div>

*Soal ini melatih kemampuan mengenali pola aljabar dan pembuktian dengan Induksi Matematika.*

</div>

---
layout: two-cols
---

# 2.6 Dekomposisi Fungsi: Jembatan Aturan Rantai

Pada bab Turunan, mahasiswa akan mempelajari **Aturan Rantai (Chain Rule)**:

$$
\frac{dy}{dx} = \frac{dy}{du} \cdot \frac{du}{dx}
$$

Mahasiswa harus mahir mengurai fungsi kompleks menjadi rantai fungsi elementer.

### Contoh Kasus Dekomposisi:

$$
y = \sin^3\left(\sqrt{x^2 + 1}\right)
$$

Urutan proses penyusunan dari dalam ke luar:

::right::

<div class="pl-4">

### 4 Lapisan Dekomposisi:

1. **Lapisan Inti (Input):** $u = x^2 + 1$
2. **Lapisan Akar Kuadrat:** $v = \sqrt{u}$
3. **Lapisan Trigonometri:** $w = \sin(v)$
4. **Lapisan Pangkat Tiga (Output):** $y = w^3$

Maka:

$$
y = (f \circ g \circ h \circ k)(x)
$$

Kemahiran membedah lapisan fungsi ini adalah kunci sukses diferensiasi rantai di kalkulus!

</div>

---
layout: default
---
layout: center
class: text-center
---

<div class="badge-warm mb-4">BAGIAN 3</div>

# Fungsi Satu-ke-Satu (Injektif)

<p class="text-base text-[#585F6D] max-w-lg mx-auto mt-2">
  Syarat mutlak eksistensi fungsi invers, Uji Garis Horizontal, hubungan kemonotonan, dan restriksi domain.
</p>
---
layout: two-cols
---

# 3.1 Mengapa Tidak Semua Fungsi Punya Invers?

Misalkan kita ingin membalik proses output kembali ke input asal.

Pada fungsi $f(x) = x^2$ untuk seluruh $\mathbb{R}$:
- $f(2) = 4$
- $f(-2) = 4$

<div class="callout-terracotta">

### Paradoks Pembalikan Nilai
Jika output bernilai $4$, berapakah input asalnya? Jawabannya ada dua: $2$ atau $-2$.

</div>

Hasil pembalikan tidak tunggal. Ini melanggar definisi formal fungsi.

::right::

<div class="pl-4">

<div class="callout-pine">

### Definisi Formal: Fungsi Satu-ke-Satu
Fungsi $f$ disebut **satu-ke-satu (injektif)** jika:

$$
x_1 \neq x_2 \implies f(x_1) \neq f(x_2)
$$

Atau secara kontraposisi:

$$
f(x_1) = f(x_2) \implies x_1 = x_2
$$

</div>

<div class="callout-navy mt-3">

### Teorema Eksistensi Invers:
Fungsi $f$ memiliki invers $f^{-1}$ **jika dan hanya jika** $f$ adalah fungsi **satu-ke-satu** pada daerah asalnya.

</div>

</div>

---
layout: two-cols
---

# 3.2 Uji Garis Horizontal & Kemonotonan

Cara praktis menguji sifat satu-ke-satu:

### Uji Garis Horizontal (*Horizontal Line Test*)
Tarik garis horizontal sembarang $y = c$:
- Jika setiap garis horizontal memotong kurva di **maksimal satu titik**, maka fungsi satu-ke-satu.
- Jika ada garis horizontal yang memotong kurva di $\ge 2$ titik, fungsi **tidak memiliki invers**.

Kurva $y = x^2$ dipotong garis $y = 4$ di dua titik: $(-2, 4)$ dan $(2, 4)$. Maka gagal uji.

::right::

<div class="pl-4">

<div class="callout-pine">

### Teorema Kemonotonan Murni:
Jika fungsi $f$ diferensiabel pada interval $I$:
1. $f'(x) > 0$ untuk semua $x \in I$ (**naik murni**), maka $f$ pasti satu-ke-satu.
2. $f'(x) < 0$ untuk semua $x \in I$ (**turun murni**), maka $f$ pasti satu-ke-satu.

</div>

Fungsi yang selalu menanjak atau menurun dijamin tidak pernah membalik arah, sehingga nilai fungsi tidak berulang.

</div>

---
layout: two-cols
---

# 3.3 Penyelamatan: Restriksi Domain

Bagaimana agar fungsi yang tidak satu-ke-satu tetap dapat memiliki invers? Lakukan **restriksi domain**!

### Kasus $f(x) = x^2$:
Domain dibatasi menjadi $D_f = [0, \infty)$ ($x \ge 0$).
- Kurva hanya berupa cabang kanan parabola.
- Fungsi menjadi naik murni dan lolos Uji Garis Horizontal.
- Memiliki invers sah:

$$
f^{-1}(x) = \sqrt{x}, \quad x \ge 0
$$

::right::

<div class="pl-4">

<div class="callout-navy">

### Dasar Invers Trigonometri:
Fungsi trigonometri periodik dibatasi domainnya agar memiliki invers:

</div>

- $\sin x$ dibatasi pada $\left[-\frac{\pi}{2}, \frac{\pi}{2}\right] \implies \arcsin x$
- $\cos x$ dibatasi pada $[0, \pi] \implies \arccos x$
- $\tan x$ dibatasi pada $\left(-\frac{\pi}{2}, \frac{\pi}{2}\right) \implies \arctan x$

Restriksi domain adalah teknik standar dalam kalkulus analitis.

</div>

---
layout: center
class: text-center
---

<div class="badge-warm mb-4">BAGIAN 4</div>

# Fungsi Invers ($f^{-1}$)

<p class="text-base text-[#585F6D] max-w-lg mx-auto mt-2">
  Persamaan pembatalan, simetri cermin garis $y = x$, prosedur aljabar, bedah soal, dan turunan fungsi invers.
</p>
---
layout: two-cols
---

# 4.1 Definisi Formal & Relasi Domain-Range

Jika $f: A \to B$ satu-ke-satu, maka inversnya $f^{-1}: B \to A$ memenuhi:

$$
f^{-1}(y) = x \iff f(x) = y
$$

### Persamaan Pembatalan (*Cancellation*):

$$
\begin{aligned}
f^{-1}(f(x)) &= x \quad \text{untuk setiap } x \in D_f \\
f(f^{-1}(y)) &= y \quad \text{untuk setiap } y \in R_f
\end{aligned}
$$

Fungsi dan inversnya saling meniadakan efek proses.

::right::

<div class="pl-4">

<div class="callout-pine">

### Pertukaran Domain dan Range:

$$
\begin{aligned}
\text{Domain}(f^{-1}) &= \text{Range}(f) \\
\text{Range}(f^{-1}) &= \text{Domain}(f)
\end{aligned}
$$

</div>

<div class="callout-terracotta mt-3">

### ⚠️ Peringatan Notasi:
Simbol $f^{-1}(x)$ **bukan pangkat eksponen**:

$$
f^{-1}(x) \neq \frac{1}{f(x)}
$$

$f^{-1}(x)$ adalah nama fungsi invers, sedangkan $\frac{1}{f(x)}$ adalah kebalikan nilai perkalian.

</div>

</div>

---
layout: two-cols
---

# 4.2 Geometri Invers: Cermin Garis $y = x$

Sifat invers menghasilkan simetri pencerminan koordinat:

$$
\text{Titik } (a, b) \in \text{Grafik } f \iff \text{Titik } (b, a) \in \text{Grafik } f^{-1}
$$

Grafik $y = f^{-1}(x)$ diperoleh dengan **mencerminkan grafik $y = f(x)$ terhadap garis $y = x$**.

### Karakteristik:
1. Garis $y = x$ bertindak sebagai cermin identitas.
2. Titik temu kurva $f$ dan $f^{-1}$ selalu berada di garis $y = x$.

::right::

<div class="pl-4">

<div class="card-warm text-center mb-3">

### Pasangan Titik Refleksi:

$$
\begin{aligned}
(1, 3) &\longleftrightarrow (3, 1) \\
(0, 1) &\longleftrightarrow (1, 0) \\
(-2, 0) &\longleftrightarrow (0, -2)
\end{aligned}
$$

</div>

<div class="callout-amber">

### Hubungan Asimtot:
Jika $f$ memiliki **asimtot datar** $y = k$, maka $f^{-1}$ memiliki **asimtot tegak** $x = k$.

</div>

</div>

---
layout: default
---

# 4.3 Prosedur 3 Langkah Mencari Rumus Invers

Algoritma sistematis mencari rumus $f^{-1}(x)$ dari fungsi satu-ke-satu $y = f(x)$:

<div class="grid grid-cols-3 gap-4 mt-6">

<div class="card-warm">

### Langkah 1
**Tulis Persamaan Awal**
Ganti lambang $f(x)$ dengan variabel $y$:

$$
y = f(x)
$$

Catat domain asal $D_f$ sebagai batasan nilai $x$.

</div>

<div class="card-warm">

### Langkah 2
**Isolasi Variabel $x$**
Lakukan aljabar hingga $x$ berdiri sendiri di ruas kiri:

$$
x = g(y)
$$

Diperoleh bentuk $x = f^{-1}(y)$.

</div>

<div class="card-warm">

### Langkah 3
**Tukar Posisi Variabel**
Tukar variabel $x$ dan $y$ menjadi bentuk standar:

$$
y = f^{-1}(x)
$$

Tuliskan domain dari $f^{-1}$.

</div>

</div>

<div class="callout-pine mt-6 text-center">

**Langkah 4 (Verifikasi):** Periksa kebenaran jawaban dengan menguji $f(f^{-1}(x)) = x$.

</div>

---
layout: two-cols
---

# 4.4 Soal 5 (Dasar) — Invers Rasional Linear

<div class="card-warm mb-3 font-mono text-xs">

**[SOAL 5]** Diberikan fungsi rasional linear:

$$
f(x) = \frac{2x + 3}{5x - 1}
$$

Tentukan rumus $f^{-1}(x)$ serta domain dan range dari $f$ dan $f^{-1}$!

</div>

### Penurunan Aljabar Terstruktur:

$$
\begin{aligned}
y(5x - 1) &= 2x + 3 \\
5xy - y &= 2x + 3 \\
5xy - 2x &= y + 3 \\
x(5y - 2) &= y + 3 \\
x &= \frac{y + 3}{5y - 2}
\end{aligned}
$$

Tukar variabel: $f^{-1}(x) = \frac{x + 3}{5x - 2}$.

::right::

<div class="pl-4">

### Domain & Range Keduanya:
- Domain $f$: $5x - 1 \neq 0 \implies D_f = \mathbb{R} \setminus \left\{\frac{1}{5}\right\}$
- Domain $f^{-1}$: $5x - 2 \neq 0 \implies D_{f^{-1}} = \mathbb{R} \setminus \left\{\frac{2}{5}\right\}$

Berdasarkan relasi invers:

$$
\begin{aligned}
R_f &= D_{f^{-1}} = \mathbb{R} \setminus \left\{\frac{2}{5}\right\} \\
R_{f^{-1}} &= D_f = \mathbb{R} \setminus \left\{\frac{1}{5}\right\}
\end{aligned}
$$

<div class="callout-navy mt-2">

**Rumus Kilat Pecahan Linear:**
Jika $f(x) = \frac{ax+b}{cx+d}$, maka $f^{-1}(x) = \frac{-dx+b}{cx-a}$.

</div>

</div>

---
layout: two-cols
---

# 4.5 Soal 6 (Menengah) — Kuadrat Berdomain Terbatas

<div class="card-warm mb-3 font-mono text-xs">

**[SOAL 6]** Diberikan fungsi kuadrat:

$$
f(x) = x^2 - 6x + 5 \quad \text{untuk} \quad x \ge 3
$$

Tentukan rumus invers $f^{-1}(x)$ dan daerah asalnya!

</div>

### 1. Melengkapkan Kuadrat Sempurna:

$$
\begin{aligned}
y &= (x^2 - 6x + 9) - 9 + 5 \\
y &= (x - 3)^2 - 4 \\
(x - 3)^2 &= y + 4 \\
x - 3 &= \pm \sqrt{y + 4}
\end{aligned}
$$

::right::

<div class="pl-4">

### 2. Pemilihan Tanda $(\pm)$:
Perhatikan syarat domain awal: **$x \ge 3$**.

Karena $x \ge 3$, maka nilai $x - 3 \ge 0$ (harus tak-negatif).
Maka kita **wajib memilih tanda positif $(+)$**:

$$
x = 3 + \sqrt{y + 4}
$$

Tukar variabel:

$$
f^{-1}(x) = 3 + \sqrt{x + 4}
$$

<div class="callout-pine mt-3">

### Domain $D_{f^{-1}}$:

$$
x + 4 \ge 0 \implies D_{f^{-1}} = [-4, \infty)
$$

</div>

</div>

---
layout: two-cols
---

# 4.6 Soal 7 (Trik Analisis) — Invers Tanpa Rumus

<div class="card-warm mb-3 font-mono text-xs">

**[SOAL 7 - Trik Kalkulus]** Diberikan:

$$
f(x) = x^5 + 2x^3 + 3x - 2
$$

Tentukan nilai $f^{-1}(4)$ tanpa mencari rumus eksplisitnya!

</div>

### Mengapa Rumus Eksplisit Tidak Dicari?
Menyelesaikan $x$ dari persamaan derajat 5 secara umum adalah hal yang mustahil (Teorema Abel-Ruffini).

::right::

<div class="pl-4">

### Solusi Menggunakan Definisi Invers:
Misalkan $f^{-1}(4) = k \iff f(k) = 4$.

Kita hanya perlu mencari $k$ sedemikian hingga:

$$
k^5 + 2k^3 + 3k - 2 = 4 \iff k^5 + 2k^3 + 3k = 6
$$

Turunan $f'(x) = 5x^4 + 6x^2 + 3 > 0$ (selalu naik murni), maka nilai $k$ **pasti tunggal**.

Uji $k = 1$:

$$
1^5 + 2(1)^3 + 3(1) = 6 \quad \text{(Sesuai!)}
$$

Maka $f(1) = 4 \implies f^{-1}(4) = 1$.

</div>

---
layout: two-cols
---

# 4.7 Jembatan ke Kalkulus: Turunan Fungsi Invers

Konsep Soal 7 langsung diaplikasikan pada bab Turunan:

<div class="callout-navy">

### Teorema Turunan Fungsi Invers:
Jika $f$ satu-ke-satu dan diferensiabel dengan $f'(a) \neq 0$:

$$
(f^{-1})'(b) = \frac{1}{f'(a)} \quad \text{di mana } f(a) = b
$$

</div>

Kemiringan garis singgung grafik invers adalah kebalikan dari kemiringan kurva asal.

::right::

<div class="pl-4">

### Lanjutan Langsung dari Soal 7:
Berapakah nilai turunan $(f^{-1})'(4)$ untuk fungsi $f(x) = x^5 + 2x^3 + 3x - 2$?

Dari Soal 7 telah dibuktikan bahwa $f(1) = 4$ ($a = 1, b = 4$).

Hitung turunan fungsi asal pada $x = 1$:

$$
f'(x) = 5x^4 + 6x^2 + 3 \implies f'(1) = 5(1) + 6(1) + 3 = 14
$$

Maka nilai turunan inversnya:

$$
(f^{-1})'(4) = \frac{1}{f'(1)} = \frac{1}{14}
$$

</div>

---
layout: default
---

# Rangkuman 4 Aturan Emas (*Golden Rules*)

Prinsip utama yang wajib diingat mahasiswa saat menghadapi ujian Kalkulus 1:

<div class="grid grid-cols-2 gap-4 mt-4">

<div class="card-warm">

### 1. Operasi Aljabar
- Domain operasi adalah irisan: $D_f \cap D_g$.
- Pembagian: kecualikan pembuat nol penyebut.
- **Selalu tentukan domain sebelum menyederhanakan pecahan!**

</div>

<div class="card-warm">

### 2. Komposisi Fungsi
- $D_{f \circ g} = \{x \in D_g \mid g(x) \in D_f\}$.
- Nilai $x$ harus sah di fungsi dalam, dan $g(x)$ sah di fungsi luar.
- Urutan proses tidak boleh terbalik ($f \circ g \neq g \circ f$).

</div>

<div class="card-warm">

### 3. Keterinversan
- Syarat mutlak: fungsi harus **satu-ke-satu (injektif)**.
- Lolos Uji Garis Horizontal (memotong paling banyak di 1 titik).
- Fungsi monoton murni ($f'>0$ atau $f'<0$) dijamin berinvers.

</div>

<div class="card-warm">

### 4. Sifat Fungsi Invers
- Simetri pencerminan terhadap garis cermin $y = x$.
- Pertukaran domain dan range: $\text{Dom}(f^{-1}) = \text{Ran}(f)$.
- Nilai $f^{-1}(b)$ dicari dengan menyelesaikan persamaan $f(x) = b$.

</div>

</div>

---
layout: default
---

# Latihan Mandiri Mahasiswa (Challenge Problems)

Kerjakan secara mandiri untuk menguji pemahaman konsep dan ketelitian aljabar:

<div class="grid grid-cols-2 gap-4 mt-4">

<div class="card-warm">

### Soal 1: Domain Perkalian Aljabar
Diberikan $f(x) = \sqrt{9 - x^2}$ dan $g(x) = \frac{1}{\sqrt{x - 1}}$.
Tentukan rumus $(f \cdot g)(x)$ dan daerah asalnya dalam notasi interval!

</div>

<div class="card-warm">

### Soal 2: Domain Komposisi Rasional
Jika $f(x) = \frac{1}{x + 2}$ dan $g(x) = \frac{x - 1}{x - 2}$, tentukan rumus fungsi $(f \circ g)(x)$ dan daerah asal alaminya!

</div>

<div class="card-warm">

### Soal 3: Invers Akar & Restriksi
Diberikan fungsi $f(x) = 2 - \sqrt{x + 1}$.
Buktikan bahwa $f$ satu-ke-satu, lalu temukan rumus $f^{-1}(x)$ dan tentukan domainnya!

</div>

<div class="card-warm">

### Soal 4: Evaluasi Invers & Garis Singgung
Diberikan $f(x) = 2x^3 + 3x + 5$.
Hitunglah nilai dari $f^{-1}(10)$ serta tentukan nilai turunan $(f^{-1})'(10)$!

</div>

</div>

---
layout: default
---

# Kunci Jawaban & Panduan Solusi Mandiri

Validasi jawaban kalian dengan hasil ringkas berikut:

<div class="grid grid-cols-2 gap-4 mt-4">

<div class="card-warm text-xs">

**Kunci Soal 1:**
- $D_f = [-3, 3]$ dan $D_g = (1, \infty)$
- Rumus: $(f \cdot g)(x) = \sqrt{\frac{9-x^2}{x-1}}$
- **Domain:** $D_{f \cdot g} = D_f \cap D_g = (1, 3]$ *(Kurung buka pada $1$, kurung siku pada $3$)*.

</div>

<div class="card-warm text-xs">

**Kunci Soal 2:**
- Syarat dalam: $x \neq 2$
- Syarat luar: $g(x) \neq -2 \iff \frac{x-1}{x-2} \neq -2 \iff x \neq \frac{5}{3}$
- Rumus: $(f \circ g)(x) = \frac{x-2}{3x-5}$
- **Domain:** $D_{f \circ g} = \mathbb{R} \setminus \left\{\frac{5}{3}, 2\right\}$

</div>

<div class="card-warm text-xs">

**Kunci Soal 3:**
- $y = 2 - \sqrt{x+1} \implies \sqrt{x+1} = 2 - y \implies x = (2-y)^2 - 1$
- Karena $\sqrt{x+1} \ge 0$, maka $2 - y \ge 0 \iff y \le 2$
- **Invers:** $f^{-1}(x) = (2-x)^2 - 1$ dengan $D_{f^{-1}} = (-\infty, 2]$

</div>

<div class="card-warm text-xs">

**Kunci Soal 4:**
- Persamaan $2k^3 + 3k + 5 = 10 \iff 2k^3 + 3k = 5 \implies k = 1$
- Nilai invers: $f^{-1}(10) = 1$
- Turunan: $f'(x) = 6x^2 + 3 \implies f'(1) = 9$
- Maka: $(f^{-1})'(10) = \frac{1}{f'(1)} = \frac{1}{9}$

</div>

</div>

---
layout: center
class: text-center
---

# Selesai & Diskusi

<div class="mt-4 text-lg text-[#585F6D] font-medium max-w-lg mx-auto leading-relaxed">
  "Di dalam kalkulus, pemahaman konsep yang kokoh jauh lebih berharga daripada hafalan rumus mekanis."
</div>

<div class="mt-8 flex justify-center gap-4 text-sm">
  <span class="px-4 py-2 rounded-xl bg-[#F5EFEB] text-[#23272E] border border-[#E8DFD5] font-semibold shadow-sm">
    💬 Silakan Ajukan Pertanyaan atau Diskusi
  </span>
</div>

<div class="mt-12 text-xs text-[#8C93A0]">
  Kalkulus I • Operasi Fungsi & Fungsi Invers • Slidev (16:10 MacBook)
</div>
