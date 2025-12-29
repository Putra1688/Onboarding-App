import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Gambar dengan Stack untuk efek bertumpuk
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.lightbulb_outline,
                    size: 100,
                    color: Colors.green,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 50),

            // opening
            Center(
              child: Text(
                'aspek penting dalam pengembangan aplikasi mobile menggunakan Flutter:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),

            // Judul
            const Text(
              'Key Features',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),

            const SizedBox(height: 20),

            // Deskripsi dengan List
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  _buildFeatureItem(
                    'UI/UX Layer: Membangun antarmuka pengguna yang menarik dan responsif.',
                  ),
                  _buildFeatureItem(
                    'Bussiness Logic : Menangani logika aplikasi dan interaksi data (Contoh: State Management).',
                  ),
                  _buildFeatureItem(
                    'Native Features: Mengakses fitur perangkat keras dan perangkat lunak (Contoh: Kamera, GPS, Penyimpanan).',
                  ),
                  _buildFeatureItem(
                    'Data Layer: Mengelola penyimpanan data lokal dan jarak jauh (Contoh: SQLite, Firebase).',
                  ),
                  _buildFeatureItem(
                    'Performance & Quality: Mengoptimalkan kinerja aplikasi dan memastikan kualitas tinggi.',
                  ),
                  _buildFeatureItem(
                    'Arsitektur & Prinsip Lanjutan: Menerapkan pola arsitektur dan prinsip desain untuk skalabilitas dan pemeliharaan.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String text) {
    // Split text berdasarkan ': ' untuk memisahkan title dan deskripsi
    final parts = text.split(': ');
    final title = parts.isNotEmpty ? parts[0] : '';
    final description = parts.length > 1 ? parts.sublist(1).join(': ') : '';

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 8,
            height: 8,
            margin: const EdgeInsets.only(top: 6),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      backgroundColor: Color(0xFFFFEB3B),
                    ),
                  ),
                  if (description.isNotEmpty) ...[
                    TextSpan(
                      text: ': ',
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    TextSpan(
                      text: description,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
