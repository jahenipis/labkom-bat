# javac-path.bat

Perintah untuk menambahkan directory `bin` JDK ke nilai system environment variable PATH yang sudah ada.

## Penting

Jangan lupa untuk selalu eksekusi skrip dengan "***Run As Administrator***". Menjalankan SETX bukan sebagai Administrator bisa menyebabkan gagal untuk menulis nilai pada System Variable seperti yang dideskripsikan pada pertanyaan ini: https://stackoverflow.com/questions/19287379/how-do-i-add-to-the-windows-path-variable-using-setx-having-weird-problems, dimana justru nilai User Variables yang akan terduplikat dan _terpotong_ karena terlalu panjang:  "Error: Truncated at 1,024 characters."

Untuk dipakai sesuai keperluan, pastikan direktori `bin` sesuai dengan direktori PC. Perlu untuk set direktorinya sesuai dengan PC yang dimaksud.

Sumber untuk dipelajari lebih lanjut:

https://stackoverflow.com/questions/17240725/setx-doesnt-append-path-to-system-path-variable
