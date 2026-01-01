
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pusat Bantuan', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCallCenterCard(),
              const SizedBox(height: 24),
              const Text(
                'Tanya Jawab (FAQ)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              _buildFaqItem('Bagaimana cara mendaftar program JHT?', 'Anda dapat mendaftar melalui aplikasi JMO atau datang langsung ke kantor cabang terdekat dengan membawa KTP dan dokumen pendukung lainnya.'),
              _buildFaqItem('Apa saja syarat klaim Jaminan Kecelakaan Kerja?', 'Syaratnya meliputi laporan kecelakaan dari perusahaan, surat keterangan dokter, dan kartu peserta BPJS Ketenagakerjaan. Proses klaim dapat dilakukan melalui aplikasi JMO.'),
              _buildFaqItem('Bagaimana cara cek saldo JHT online?', 'Cek saldo dapat dilakukan dengan mudah melalui aplikasi JMO pada menu Cek Saldo. Saldo akan langsung ditampilkan di layar Anda.'),
              _buildFaqItem('Di mana lokasi kantor cabang terdekat?', 'Anda dapat menemukan lokasi kantor cabang terdekat melalui menu \'Lokasi Kantor\' di aplikasi ini atau dengan mengunjungi website resmi kami.'),
              const SizedBox(height: 24),
              const Text(
                'Layanan Lainnya',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              _buildOtherService(Icons.location_on_outlined, 'Lokasi Kantor'),
              _buildOtherService(Icons.email_outlined, 'Kirim Email'),
              _buildOtherService(Icons.web_outlined, 'Kunjungi Website'),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showLiveChat(context),
        label: const Text('Live Chat'),
        icon: const Icon(Icons.chat_bubble_outline),
        backgroundColor: Colors.teal.shade400,
      ),
    );
  }

  void _showLiveChat(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.8,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.teal.shade400,
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Live Chat', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                    IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close, color: Colors.white))
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      _buildChatMessage('Halo! Ada yang dapat kami bantu?'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                         decoration: InputDecoration(
                          hintText: 'Ketik pesan Anda...',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                           contentPadding: const EdgeInsets.symmetric(horizontal: 16)
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton(onPressed: (){}, icon: Icon(Icons.send, color: Colors.teal.shade400))
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget _buildChatMessage(String message) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(message, style: const TextStyle(fontSize: 16)),
      ),
    );
  }


  Widget _buildCallCenterCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [Colors.teal.shade400, Colors.teal.shade600],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Row(
          children: [
            Icon(Icons.call, color: Colors.white, size: 40),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Call Center', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text('175', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text('Layanan 24 Jam', style: TextStyle(color: Colors.white70, fontSize: 14)),
              ],
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildFaqItem(String question, String answer) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        title: Text(question, style: const TextStyle(fontWeight: FontWeight.w500)),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
            child: Text(answer, style: const TextStyle(color: Colors.black54)),
          )
        ],
      ),
    );
  }

    Widget _buildOtherService(IconData icon, String title) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, color: Colors.teal.shade500),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: () {},
      ),
    );
  }
}
