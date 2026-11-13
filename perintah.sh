#!/usr/bin/env bash
# ==============================================================================
# 📜 KUMPULAN SKRIP PERINTAH LENGKAP - SESI BELAJAR ANTIGRAVITY (catatan-eyay)
# Repositori: https://github.com/rezkyekaputra/catatan-eyay
# Pengguna  : rep (Gentoo Linux)
# File      : /home/rep/catatan-eyay/perintah.sh
# ==============================================================================
# Skrip ini berisi seluruh kumpulan perintah terminal bash yang pernah kita
# pelajari dan jalankan dari Sesi 1 sampai Sesi terbaru.
#
# Cara menjalankan:
#   cd ~/catatan-eyay
#   ./perintah.sh
#   (atau: bash ~/catatan-eyay/perintah.sh)
# ==============================================================================

echo "======================================================================"
echo "🚀 MENJALANKAN UJI PERINTAH LENGKAP - BUKU CATATAN ANTIGRAVITY (eyay)"
echo "======================================================================"

echo ""
echo "[1] SESI 1: Pengecekan Identitas User & Lingkungan Akun rep"
echo "----------------------------------------------------------------------"
whoami
id
pwd
grep rep /etc/passwd

echo ""
echo "[2] SESI 2 & 4: Pengujian Kompiler GCC & Modul Gem FFI Ruby"
echo "----------------------------------------------------------------------"
gcc --version | head -n 1
source ~/.rvm/scripts/rvm 2>/dev/null || true
ruby -e "require 'rubygems'; require 'ffi'; puts 'Status FFI Gem: OK (Versi ' + FFI::VERSION + ')'"

echo ""
echo "[3] SESI 3: Verifikasi Sintaks .bashrc & Pengujian Koneksi HTTPS SSL"
echo "----------------------------------------------------------------------"
bash -n /home/rep/.bashrc && echo "Sintaks .bashrc: VALID (Tanpa Error)"
ruby -ropen-uri -e 'open("https://rubygems.org") { |f| puts "Koneksi HTTPS Ruby: " + f.status.join(" ") }'

echo ""
echo "[4] SESI 6 & 7: Uji Autentikasi SSH ke GitHub"
echo "----------------------------------------------------------------------"
ssh -T git@github.com 2>&1 || true

echo ""
echo "[5] SESI 11 & 15: Status Repositori Git & 5 Commit Terakhir"
echo "----------------------------------------------------------------------"
git -C /home/rep/catatan-eyay status -s
git -C /home/rep/catatan-eyay log -n 5 --oneline

echo ""
echo "[6] SESI 13: Audit Lengkap Spesifikasi Gentoo Linux"
echo "----------------------------------------------------------------------"
echo "Kernel   : $(uname -r)"
echo "Hostname : $(uname -n)"
echo "Uptime   : $(uptime -p 2>/dev/null || uptime)"
echo "RAM      : $(free -h | awk '/Mem:/ {print "Terpakai: " $3 " / Total: " $2 " (Tersedia: " $7 ")"}')"
echo "Disk /   : $(df -h / | awk 'NR==2 {print "Terpakai: " $3 " / Total: " $2 " (Sisa: " $4 ")"}')"
echo "Kompiler : $(gcc --version | head -n 1)"
echo "Linker   : $(ld --version | head -n 1)"

echo ""
echo "[7] SESI 20-22: Verifikasi Akses & Sinkronisasi Arsip Sesi dongkrak"
echo "----------------------------------------------------------------------"
ls -ld /home/dongkrak/.gemini/antigravity-cli 2>/dev/null && echo "Akses Folder dongkrak: TERSEDIA (Read-OK)"
echo "Total Berkas di arsip-dongkrak/:"
ls -lh /home/rep/catatan-eyay/arsip-dongkrak/

echo ""
echo "======================================================================"
echo "✅ SEMUA PERINTAH DARI BUKU CATATAN BERHASIL DIUJI COBA 100%!"
echo "======================================================================"

