#!/bin/bash

# Fungsi untuk menginstal SQLmap
install_sqlmap() {
    echo "Memulai instalasi SQLmap..."
    # Tambahkan perintah instalasi SQLmap di sini
    cd sqlmap
    python3 setup.py install
    echo "SQLmap berhasil diinstal."
}

# Fungsi untuk menginstal Nikto
install_nikto() {
    echo "Memulai instalasi Nikto..."
    # Tambahkan perintah instalasi Nikto di sini
    cd nikto
    ./configure
    make
    sudo make install
    echo "Nikto berhasil diinstal."
}

# Fungsi untuk menginstal Metasploit
install_metasploit() {
    echo "Memulai instalasi Metasploit..."
    # Tambahkan perintah instalasi Metasploit di sini
    cd metasploit
    ./configure
    make
    sudo make install
    echo "Metasploit berhasil diinstal."
}

# Fungsi untuk menginstal Redhawk
install_redhawk() {
    echo "Memulai instalasi Redhawk..."
    # Tambahkan perintah instalasi Redhawk di sini
    cd redhawk
    ./configure
    make
    sudo make install
    echo "Redhawk berhasil diinstal."
}

# Menampilkan gambar menggunakan simbol ASCII
echo "   ____    _    ____  _____  ______      _______ _     _ _______ "
echo "  / __ \  | |  |  _ \|  __ \|  ____/\   |__   __| |   | |__   __|"
echo " | |  | | | |  | |_) | |__) | |__ /  \     | |  | |   | |  | |   "
echo " | |  | | | |  |  _ <|  _  /|  __/ /\ \    | |  | |   | |  | |   "
echo " | |__| | | |__| |_) | | \ \| | / ____ \   | |  | |___| |  | |   "
echo "  \___\_\  \____/|____/|_|  \_\_|/_/    \_\  |_|  |_____|  |_|   "

# Menampilkan menu pilihan
echo "========== Pilihan Alat Keamanan =========="
echo "1. SQLmap"
echo "2. Nikto"
echo "3. Metasploit"
echo "4. Redhawk"
echo "============================================"

# Meminta pengguna memilih pilihan
read -p "Masukkan pilihan (1-4): " choice

# Memproses pilihan pengguna
case $choice in
    1)
        cd sqlmap
        install_sqlmap
        ;;
    2)
        cd nikto
        install_nikto
        ;;
    3)
        cd metasploit
        install_metasploit
        ;;
    4)
        cd redhawk
        install_redhawk
        ;;
    *)
        echo "Pilihan tidak valid"
        exit 1
        ;;
esac
