#!/usr/bin/env bash
# ==============================================================================
# DAFTAR LENGKAP SEMUA PERINTAH DARI SESI BELAJAR ANTIGRAVITY (rep-box)
# Lokasi: /home/rep/catatan-eyay/perintah.sh
# ==============================================================================

echo "=== 1. PERINTAH PENGECEKAN IDENTITAS USER ==="
whoami
id
pwd
grep rep /etc/passwd

echo "=== 2. PERINTAH PENGECEKAN ISOLASI DAN FILE CONFIG ==="
ls -la /home/rep
cat /home/rep/.bashrc

echo "=== 3. PERINTAH PENGUJIAN SSL RUBY ==="
source ~/.rvm/scripts/rvm 2>/dev/null
ruby -ropen-uri -e 'open("https://rubygems.org") { |f| puts "Status Koneksi HTTPS Ruby: " + f.status.join(" ") }'

echo "=== 4. PERINTAH VERIFIKASI GEM FFI ==="
ruby -e "require 'rubygems'; require 'ffi'; puts 'FFI Version: ' + FFI::VERSION; puts 'Platform: ' + FFI::Platform::ARCH + '-' + FFI::Platform::OS"

echo "=== 5. PERINTAH UJI SINTAKS BASH ==="
bash -n /home/rep/.bashrc
echo "Sintaks .bashrc OK!"

# ==============================================================================
# PERINTAH UNTUK ANDA MENGHUBUNGKAN FOLDER INI KE GITHUB:
# ==============================================================================
# git config --global user.name "UsernameGitHubAnda"
# git config --global user.email "email-anda@example.com"
# ssh-keygen -t ed25519 -C "email-anda@example.com"
# cat ~/.ssh/id_ed25519.pub
# ssh -T git@github.com
# cd ~/catatan-eyay
# git init
# git add .
# git commit -m "Catatan dan skrip perintah lengkap"
# git branch -M main
# git remote add origin git@github.com:UsernameGitHubAnda/catatan-eyay.git
# git push -u origin main

echo "=== 6. PERINTAH UJI KONEKSI SSH GITHUB ==="
ssh -T git@github.com

echo "=== 7. PERINTAH GIT STATUS & LOG REPOSITORI ==="
git -C /home/rep/catatan-eyay status
git -C /home/rep/catatan-eyay log -n 5 --oneline

echo "=== 8. PERINTAH AUDIT DETAIL SISTEM GENTOO LINUX ==="
uname -a
cat /etc/os-release
cat /etc/gentoo-release 2>/dev/null
uptime
lscpu
free -h
df -h
lsblk
cat /etc/portage/make.conf 2>/dev/null
eselect profile show 2>/dev/null
gcc --version | head -n 1
ld --version | head -n 1
python3 --version 2>/dev/null
ruby -v 2>/dev/null


