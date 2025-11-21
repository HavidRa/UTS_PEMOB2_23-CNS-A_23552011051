# ✅ **1. Jelaskan perbedaan antara Cubit dan Bloc dalam arsitektur Flutter. (10 Poin)**

**Cubit** dan **Bloc** sama‐sama bagian dari package *flutter_bloc*, tetapi keduanya berbeda dalam cara mengelola state:

### **Cubit**

* Menggunakan **fungsi langsung** untuk mengubah state.
* **Lebih sederhana**, cocok untuk logic yang tidak terlalu kompleks.
* Tidak menggunakan *event*.
* Perubahan state dipicu dengan memanggil `emit()` di dalam fungsi.

**Contoh:**
`addToCart()`, `removeFromCart()`, `updateQuantity()` dipanggil langsung.

### **Bloc**

* Menggunakan **Event → Bloc → State**.
* **Lebih terstruktur dan scalable** untuk aplikasi besar.
* State berubah berdasarkan **event** yang dikirimkan oleh UI.
* Membutuhkan class event terpisah.

**Perbedaan Utama:**

| Cubit                   | Bloc                             |
| ----------------------- | -------------------------------- |
| Sederhana               | Lebih kompleks                   |
| Tidak pakai event       | Pakai event                      |
| Cepat dibuat            | Lebih banyak boilerplate         |
| Cocok untuk fitur kecil | Cocok untuk fitur besar/kompleks |

---

# ✅ **2. Mengapa penting untuk memisahkan antara model data, logika bisnis, dan UI dalam Flutter? (10 Poin)**

Ada beberapa alasan utama:

### **1. Mudah Dipelihara (Maintainability)**

Kode yang terpisah membuat perubahan lebih mudah.
Contoh: Mengubah tampilan UI tidak mengganggu logic di Cubit.

### **2. Reusability (Dapat Dipakai Ulang)**

Model data dan Cubit dapat digunakan di banyak halaman.
Misalnya `CartCubit` dapat dipakai di summary page dan home page.

### **3. Mencegah Kode Berantakan (Clean Architecture)**

Jika UI dan logic bercampur, proyek menjadi sulit dikembangkan.

### **4. Lebih mudah di-test**

Cubit/Bloc bisa diuji tanpa melibatkan UI.

### **5. Skalabilitas aplikasi**

Ketika aplikasi tumbuh besar, struktur tetap rapi dan mudah dikembangkan.

---

# ✅ **3. Sebutkan dan jelaskan minimal tiga state dalam CartCubit. (10 Poin)**

Catatan: meskipun Cubit hanya punya satu class state, kita **bisa menjelaskan kondisi state** yang mungkin terjadi.

Berikut minimal tiga state yang logis untuk CartCubit:

---

### **1. CartEmptyState**

* Terjadi ketika keranjang belum berisi produk.
* Biasanya ditampilkan saat aplikasi baru dibuka atau setelah checkout.

**Fungsi:**
Menunjukkan ke UI bahwa keranjang kosong → tampilkan pesan “Keranjang kosong”.

---

### **2. CartUpdatedState**

* Terjadi setelah user menambahkan, mengubah jumlah, atau menghapus produk.

**Fungsi:**
Memberitahu UI bahwa jumlah item atau total harga berubah sehingga UI harus di-refresh.

---

### **3. CartLoadingState (opsional)**

* Saat proses update keranjang membutuhkan waktu (misalnya memuat dari database atau API).

**Fungsi:**
Menampilkan indikator loading sebelum state selesai berubah.

---

### **Alternatif lain (kalau Cubit-nya sederhana):**

* **InitialCartState** → state awal
* **CartChangedState** → setelah produk berubah
* **CartClearedState** → setelah checkout

Semua jawaban ini tetap valid sesuai konsep.

---

# 🎉 Kalau kamu mau, aku bisa lanjut bantu merapikan jawaban ke format PDF atau format pendek untuk diisi ke lembar ujian.
