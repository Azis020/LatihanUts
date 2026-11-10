// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(colorSchemeSeed: Colors.blueAccent),
//       home: Scaffold(
//         appBar: AppBar(title: const Text('List View Contoh')),
//         body: Column(
//           children: [
//             ListTile(
//               leading: Icon(Icons.mail_outline),
//               title: Text('Email'),
//               subtitle: Text('AzisGimnastiar@gmail.com'),
//             ),
//             ListTile(
//               leading: Icon(Icons.phone_outlined),
//               title: Text('Telepon'),
//               subtitle: Text('085714243205'),
//             ),
//             ListTile(
//               leading: Icon(Icons.location_on_outlined),
//               title: Text('Alamat'),
//               subtitle: Text('Kutabumi'),
//             ),
//             ListTile(
//               leading: Icon(Icons.link_outlined),
//               title: Text('Instagram'),
//               subtitle: Text('@azis_Gymnastiar'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// soal 1 column 1
// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Aplikasi Profil Sederhana', // 1. Parameter title
//       debugShowCheckedModeBanner: false, // 2. Parameter debugShowCheckedModeBanner
//       theme: ThemeData( // 3. Parameter theme (Light Mode)
//         useMaterial3: true,
//         brightness: Brightness.light,
//         colorSchemeSeed: Colors.blue,
//         scaffoldBackgroundColor: Colors.grey[100],
//       ),
//       darkTheme: ThemeData( // 4. Parameter darkTheme (Dark Mode)
//         useMaterial3: true,
//         brightness: Brightness.dark,
//         colorSchemeSeed: Colors.blue,
//       ),
//       themeMode: ThemeMode.system, // 5. Parameter themeMode (Menyesuaikan sistem HP)
//       home: Scaffold( // 6. Parameter home (Halaman utama aplikasi)
//         appBar: AppBar(
//           title: const Text('List View Contoh'),
//           centerTitle: true,
//         ),
//         body: ListView(
//           padding: const EdgeInsets.all(16.0),
//           children: const [
//             Card(
//               elevation: 1,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(vertical: 8.0),
//                 child: Column(
//                   children: [
//                     ListTile(
//                       leading: Icon(Icons.mail_outline),
//                       title: Text('Email'),
//                       subtitle: Text('AzisGimnastiar@gmail.com'),
//                     ),
//                     Divider(height: 1),
//                     ListTile(
//                       leading: Icon(Icons.phone_outlined),
//                       title: Text('Telepon'),
//                       subtitle: Text('085714243205'),
//                     ),
//                     Divider(height: 1),
//                     ListTile(
//                       leading: Icon(Icons.location_on_outlined),
//                       title: Text('Alamat'),
//                       subtitle: Text('Kutabumi'),
//                     ),
//                     Divider(height: 1),
//                     ListTile(
//                       leading: Icon(Icons.link_outlined),
//                       title: Text('Instagram'),
//                       subtitle: Text('@azis_Gymnastiar'),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// soal 1 column 2
// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Aplikasi Profil Sederhana',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         useMaterial3: true,
//         brightness: Brightness.light,
//         colorSchemeSeed: Colors.blue,
//         scaffoldBackgroundColor: Colors.grey[100],
//       ),
//       darkTheme: ThemeData(
//         useMaterial3: true,
//         brightness: Brightness.dark,
//         colorSchemeSeed: Colors.blue,
//       ),
//       themeMode: ThemeMode.system,
//       home: const ProfileHomeScreen(),
//     );
//   }
// }

// class ProfileHomeScreen extends StatelessWidget {
//   const ProfileHomeScreen({super.key});

//   // Fungsi untuk menampilkan SnackBar
//   void _showSnackBar(BuildContext context, String message) {
//     ScaffoldMessenger.of(context)
//       ..hideCurrentSnackBar()
//       ..showSnackBar(
//         SnackBar(
//           content: Text(message),
//           duration: const Duration(seconds: 2),
//           behavior: SnackBarBehavior.floating,
//         ),
//       );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // 1. AppBar + actions
//       appBar: AppBar(
//         title: const Text('Profil Nur Azis Gimnastiar'),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.notifications_outlined),
//             onPressed: () => _showSnackBar(context, 'Tidak ada notifikasi baru'),
//             tooltip: 'Notifikasi',
//           ),
//           IconButton(
//             icon: const Icon(Icons.settings_outlined),
//             onPressed: () => _showSnackBar(context, 'Membuka menu pengaturan'),
//             tooltip: 'Pengaturan',
//           ),
//         ],
//       ),
      
//       // 2. Body (ListView berisi data profil)
//       body: ListView(
//         padding: const EdgeInsets.all(16.0),
//         children: const [
//           Card(
//             elevation: 1,
//             child: Padding(
//               padding: EdgeInsets.symmetric(vertical: 8.0),
//               child: Column(
//                 children: [
//                   ListTile(
//                     leading: Icon(Icons.mail_outline),
//                     title: Text('Email'),
//                     subtitle: Text('AzisGimnastiar@gmail.com'),
//                   ),
//                   Divider(height: 1),
//                   ListTile(
//                     leading: Icon(Icons.phone_outlined),
//                     title: Text('Telepon'),
//                     subtitle: Text('085714243205'),
//                   ),
//                   Divider(height: 1),
//                   ListTile(
//                     leading: Icon(Icons.location_on_outlined),
//                     title: Text('Alamat'),
//                     subtitle: Text('Kutabumi'),
//                   ),
//                   Divider(height: 1),
//                   ListTile(
//                     leading: Icon(Icons.link_outlined),
//                     title: Text('Instagram'),
//                     subtitle: Text('@azis_Gymnastiar'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),

//       // 3. FloatingActionButton + SnackBar yang berfungsi
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _showSnackBar(context, 'FloatingActionButton berhasil ditekan!');
//         },
//         tooltip: 'Edit Profil',
//         child: const Icon(Icons.edit),
//       ),
//     );
//   }
// }

// soal 1 column 3
// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Aplikasi Profil Sederhana',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         useMaterial3: true,
//         brightness: Brightness.light,
//         colorSchemeSeed: Colors.blue,
//         scaffoldBackgroundColor: Colors.grey[100],
//       ),
//       darkTheme: ThemeData(
//         useMaterial3: true,
//         brightness: Brightness.dark,
//         colorSchemeSeed: Colors.blue,
//       ),
//       themeMode: ThemeMode.system,
//       home: const ProfileHomeScreen(),
//     );
//   }
// }

// class ProfileHomeScreen extends StatelessWidget {
//   const ProfileHomeScreen({super.key});

//   // Fungsi untuk menampilkan SnackBar
//   void _showSnackBar(BuildContext context, String message) {
//     ScaffoldMessenger.of(context)
//       ..hideCurrentSnackBar()
//       ..showSnackBar(
//         SnackBar(
//           content: Text(message),
//           duration: const Duration(seconds: 2),
//           behavior: SnackBarBehavior.floating,
//         ),
//       );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // 1. AppBar + actions
//       appBar: AppBar(
//         title: const Text('Profil Nur Azis Gimnastiar'),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.notifications_outlined),
//             onPressed: () => _showSnackBar(context, 'Tidak ada notifikasi baru'),
//             tooltip: 'Notifikasi',
//           ),
//           IconButton(
//             icon: const Icon(Icons.settings_outlined),
//             onPressed: () => _showSnackBar(context, 'Membuka menu pengaturan'),
//             tooltip: 'Pengaturan',
//           ),
//         ],
//       ),
      
//       // 2. Body (ListView berisi data profil)
//       body: ListView(
//         padding: const EdgeInsets.all(16.0),
//         children: const [
//           Card(
//             elevation: 1,
//             child: Padding(
//               padding: EdgeInsets.symmetric(vertical: 8.0),
//               child: Column(
//                 children: [
//                   ListTile(
//                     leading: Icon(Icons.mail_outline),
//                     title: Text('Email'),
//                     subtitle: Text('AzisGimnastiar@gmail.com'),
//                   ),
//                   Divider(height: 1),
//                   ListTile(
//                     leading: Icon(Icons.phone_outlined),
//                     title: Text('Telepon'),
//                     subtitle: Text('085714243205'),
//                   ),
//                   Divider(height: 1),
//                   ListTile(
//                     leading: Icon(Icons.location_on_outlined),
//                     title: Text('Alamat'),
//                     subtitle: Text('Kutabumi'),
//                   ),
//                   Divider(height: 1),
//                   ListTile(
//                     leading: Icon(Icons.link_outlined),
//                     title: Text('Instagram'),
//                     subtitle: Text('@azis_Gymnastiar'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),

//       // 3. FloatingActionButton + SnackBar yang berfungsi
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _showSnackBar(context, 'FloatingActionButton berhasil ditekan!');
//         },
//         tooltip: 'Edit Profil',
//         child: const Icon(Icons.edit),
//       ),
//     );
//   }
// }