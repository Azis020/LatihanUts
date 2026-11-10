import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      home: ProfileHomeScreen(),
    );
  }
}

/// WIDGET REUSABLE: InfoTile (Menampilkan baris ikon dan teks)
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
          Icon(icon, size: 22),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
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

/// HALAMAN UTAMA PROFIL TANPA HIASAN
class ProfileHomeScreen extends StatelessWidget {
  const ProfileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Foto/Inisial Profil (CircleAvatar sederhana)
              const Center(child: CircleAvatar(radius: 50)),
              const SizedBox(height: 16),

              // Nama Lengkap
              const Center(
                child: Text(
                  'Nur Azis Gimnastiar',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 4),

              // Profesi/Status
              const Center(
                child: Text(
                  'Software Engineering Student',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 24),

              // KELOMPOK INFORMASI KONTAK
              const Text(
                'Informasi Kontak',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const InfoTile(
                icon: Icons.mail_outline,
                title: 'Email',
                subtitle: 'AzisGimnastiar@gmail.com',
              ),
              const InfoTile(
                icon: Icons.phone_outlined,
                title: 'Telepon',
                subtitle: '085714243205',
              ),
              const InfoTile(
                icon: Icons.location_on_outlined,
                title: 'Alamat',
                subtitle: 'Kutabumi',
              ),
              const InfoTile(
                icon: Icons.link_outlined,
                title: 'Instagram',
                subtitle: '@azis_Gymnastiar',
              ),
              const SizedBox(height: 24),

              // KELOMPOK PENDIDIKAN & KEAHLIAN
              const Text(
                'Pendidikan & Keahlian',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const InfoTile(
                icon: Icons.school_outlined,
                title: 'Universitas',
                subtitle: 'Mahasiswa Semester 5',
              ),
              const InfoTile(
                icon: Icons.code,
                title: 'Jurusan',
                subtitle: 'Software Engineering',
              ),
              const InfoTile(
                icon: Icons.laptop_mac,
                title: 'Framework Utama',
                subtitle: 'Flutter & Dart',
              ),
              const InfoTile(
                icon: Icons.work_outline,
                title: 'Status',
                subtitle: 'Active Developer',
              ),
            ],
          ),
        ),
      ),
    );
  }
}