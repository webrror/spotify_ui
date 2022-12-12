import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui/data/data.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        elevation: 5,
        backgroundColor: Colors.grey[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                    'https://i.scdn.co/image/ab6775700000ee857c7d7a4a810d8d1803a085c6'),
              ),
              title: Text('Jerin'),
              subtitle: Text('View Profile'),
              trailing: Icon(FluentIcons.chevron_right_20_regular),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(settingOptions[index]),
                  trailing: const Icon(FluentIcons.chevron_right_20_regular),
                );
              },
              itemCount: settingOptions.length,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                onPressed: () {},
                child: const Text('Log Out',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold))),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
