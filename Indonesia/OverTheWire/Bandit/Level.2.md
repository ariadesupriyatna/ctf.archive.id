![2](gambar/2.jpg)



## Filename yang Pakai Spasi di Linux


```bash
# 1. Menggunakan Escape Sequence (Tidak Direkomendasikan)
cat spaces\ in\ this\ filename

# Penjelasan:
# Cara ini menggunakan backslash (\) untuk memberitahu shell bahwa karakter spasi harus diinterpretasikan secara literal. 
# Namun, pendekatan ini tidak disarankan karena dapat membingungkan dan rentan terhadap kesalahan.

# 2. Menggunakan Single Quotes
cat 'spaces in this filename'

# Penjelasan:
# Single quotes memberitahu shell untuk mengabaikan karakter spesial di dalam string, termasuk spasi. 
# Ini adalah cara yang aman dan direkomendasikan untuk menangani filename dengan spasi.

# 3. Menggunakan Command Substitution dengan Single Quotes
echo "$(cat 'spaces in this filename')"

# Penjelasan:
# Perintah `cat` membaca isi file 'spaces in this filename' dan outputnya disimpan dalam tanda kurung. 
# Single quotes memastikan spasi dalam nama file tidak terinterpretasi secara khusus.


# 4. Menggunakan printf dengan Command Substitution dan Single Quotes
printf "$(cat 'spaces in this filename')\n"

# Penjelasan:
# Mirip dengan sebelumnya, output dari `cat` disimpan dan digunakan dalam perintah `printf`. 
# Perintah `printf` kemudian mencetak output tersebut diikuti newline (\n).

# 5. Menggunakan Loop dan tput (Lebih Kompleks)
(tput setaf 5; while IFS= read -r line; do echo "$line"; done < 'spaces in this filename'; tput sgr0)

# Penjelasan:
# Perintah ini lebih kompleks dan menggunakan beberapa konsep. 
# * `tput setaf 5`: Mengubah warna text menjadi magenta (opsional untuk mempercantik output).
# * `while IFS= read -r line`: Loop yang membaca isi file 'spaces in this filename' per baris.
# * `done < 'spaces in this filename'`: Mendefinisikan file yang akan dibaca dalam loop.
# * `echo "$line"`: Mencetak setiap baris yang dibaca dari file.
# * `tput sgr0`: Mengembalikan warna text ke default (opsional).
