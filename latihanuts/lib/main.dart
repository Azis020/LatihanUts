import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

// soal 1 column 4
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Profil Sederhana', // Judul aplikasi
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      // Pengaturan Tema Terang (Light Theme)
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
      ),

      // Pengaturan Tema Gelap (Dark Theme)
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.blue,
      ),

      // Mode tema mengikuti pengaturan sistem perangkat
      themeMode: ThemeMode.system,
      home: const ProfileHomeScreen(),
    );
  }
}

/// WIDGET REUSABLE: InfoTile (Digunakan berulang untuk menampilkan baris data)
class InfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const InfoTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.primary, size: 22),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// HALAMAN UTAMA PROFIL
class ProfileHomeScreen extends StatelessWidget {
  const ProfileHomeScreen({super.key});

  //   Snackbar untuk menampilkan pop up melayang dari footer
  // Fungsi pembantu untuk menampilkan SnackBar yang interaktif
  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          duration: const Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. APPBAR + ACTIONS
      appBar: AppBar(
        title: const Text('Profil Nur Azis Gimnastiar'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () =>
                _showSnackBar(context, 'Tidak ada notifikasi baru'),
            tooltip: 'Notifikasi',
          ),
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => _showSnackBar(context, 'Membuka menu pengaturan'),
            tooltip: 'Pengaturan',
          ),
        ],
      ),

      // 2. BODY DENGAN LAYOUT PROFIL (SafeArea, Scroll, Column, CircleAvatar, Hierarki Teks)
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Foto/Inisial Profil (CircleAvatar)
              const CircleAvatar(
                radius: 50,
                backgroundColor: Color.fromARGB(255, 247, 248, 248),
                child: CircleAvatar(
                  radius: 47,
                  // backgroundImage: NetworkImage('https://picsum.photos/200'),
                ),
              ),
              const SizedBox(height: 16),

              // Hierarki Teks 1: Nama Lengkap (Besar & Tebal)
              const Text(
                'Nur Azis Gimnastiar',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),

              // Hierarki Teks 2: Profesi/Status (Sedang & Warna Abu-abu)
              const Text(
                'Software Engineering Student',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 24),

              // CARD 1: Informasi Kontak (Memuat 4 Widget Reusable InfoTile)
              Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Informasi Kontak',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Divider(height: 20),
                      InfoTile(
                        icon: Icons.mail_outline,
                        title: 'Email',
                        subtitle: 'AzisGimnastiar@gmail.com',
                      ),
                      InfoTile(
                        icon: Icons.phone_outlined,
                        title: 'Telepon',
                        subtitle: '085714243205',
                      ),
                      InfoTile(
                        icon: Icons.location_on_outlined,
                        title: 'Alamat',
                        subtitle: 'Kutabumi',
                      ),
                      InfoTile(
                        icon: Icons.link_outlined,
                        title: 'Instagram',
                        subtitle: '@azis_Gymnastiar',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // CARD 2: Pendidikan & Keahlian (Memuat 4 Widget Reusable InfoTile)
              // Total InfoTile keseluruhan di Card 1 dan 2 adalah 8 item (Memenuhi syarat >= 7 item)
              Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Pendidikan & Keahlian',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Divider(height: 20),
                      InfoTile(
                        icon: Icons.school_outlined,
                        title: 'Universitas',
                        subtitle: 'Mahasiswa Semester 5',
                      ),
                      InfoTile(
                        icon: Icons.code,
                        title: 'Jurusan',
                        subtitle: 'Software Engineering',
                      ),
                      InfoTile(
                        icon: Icons.laptop_mac,
                        title: 'Framework Utama',
                        subtitle: 'Flutter & Dart',
                      ),
                      InfoTile(
                        icon: Icons.work_outline,
                        title: 'Status',
                        subtitle: 'Active Developer',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // 3. FLOATING ACTION BUTTON + SNACKBAR YANG BERFUNGSI
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showSnackBar(context, 'FloatingActionButton berhasil ditekan!');
        },
        tooltip: 'Edit Profilll',
        child: const Icon(Icons.edit),
      ),
    );
  }
}
