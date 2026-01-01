
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Profil Saya', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.edit_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildProfileHeader(),
              const SizedBox(height: 24),
              _buildDigitalCardSection(),
              const SizedBox(height: 24),
              _buildAccountMenu(),
              const SizedBox(height: 24),
              _buildLogoutButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(25), // Adjusted for opacity
            spreadRadius: 2,
            blurRadius: 10,
          )
        ]
      ),
      child: const Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage('https://i.pravatar.cc/150?u=a042581f4e29026704d'),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Muhammad Iqbal', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text('NIK: 327325... ', style: TextStyle(fontSize: 16, color: Colors.grey)),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildDigitalCardSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Kartu Digital', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        Container(
           height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  colors: [Colors.blue.shade800, Colors.teal.shade400],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                   BoxShadow(
                    color: Colors.teal.withAlpha(102), // Adjusted for opacity
                    blurRadius: 12,
                    offset: const Offset(0, 6)
                  )
                ]
            ),
          child: const Center(child: Text('Kartu Digital JMO', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold))), // Placeholder
        ),
      ],
    );
  }

  Widget _buildAccountMenu() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          _buildMenuItem(Icons.credit_card, 'Rekening Bank'),
          const Divider(height: 1, indent: 16, endIndent: 16),
          _buildMenuItem(Icons.settings_outlined, 'Pengaturan Akun'),
          const Divider(height: 1, indent: 16, endIndent: 16),
          _buildMenuItem(Icons.security_outlined, 'Keamanan & Privasi'),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[600]),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
      trailing: const Icon(Icons.chevron_right, color: Colors.grey),
      onTap: () {},
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        // Use go router to navigate to the login screen, and remove all previous routes.
        context.go('/login');
      },
      icon: const Icon(Icons.logout, color: Colors.red),
      label: const Text('Logout', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red[50],
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 0,
      ),
    );
  }
}
