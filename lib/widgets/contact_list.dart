import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(''),
            subtitle: Padding(padding: const EdgeInsets.only(top: 6),
            child: Text(''),
            ),
          );
        },
      ),
    );
  }
}
