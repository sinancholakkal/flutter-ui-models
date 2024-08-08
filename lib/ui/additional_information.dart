import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdditionalInformation extends StatefulWidget {
  const AdditionalInformation({super.key});

  @override
  State<AdditionalInformation> createState() => _AdditionalInformationState();
}

class _AdditionalInformationState extends State<AdditionalInformation> {
  bool isSwiched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Additional Information",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        children: [
          const ListTile(
            leading: Icon(
              Icons.share,
              size: 30,
            ),
            title: Text("Share Dukaan App"),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 15,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.language,
              size: 30,
            ),
            title: Text("Change Language"),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 15,
            ),
          ),
          ListTile(
            leading: const FaIcon(
              FontAwesomeIcons.whatsapp,
              size: 30,
            ),
            title: const Text("WhatsApp Chat Support"),
            trailing: Switch(
              value: isSwiched,
              onChanged: (value) {
                setState(() {
                  isSwiched = value;
                });
              },
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.lock_outline,
              size: 30,
            ),
            title: Text("Privacy Policy"),
          ),
          const ListTile(
            leading: Icon(
              Icons.star_outline,
              size: 30,
            ),
            title: Text("Rate Us"),
          ),
          const ListTile(
            leading: Icon(
              Icons.logout_outlined,
              size: 30,
            ),
            title: Text("Sign Out"),
          ),
        ],
      ),
    );
  }
}

const sizeBox = SizedBox(
  height: 5,
);
