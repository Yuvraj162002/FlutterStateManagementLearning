import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_management_learning/demo_apps/MyDummyAddContact.dart';
import 'package:flutter_state_management_learning/state_management/provider/MyDummyAddContactProvider.dart';
import 'package:provider/provider.dart';

class AddNotesScreen extends StatelessWidget {
  const AddNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Add Notes'), backgroundColor: Colors.amber),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            // Here you would typically handle the logic to save the note.

            Provider.of<MyDummyAddContactProvider>(
              context,
              listen: false,
            ).addContact({"name: ": "Sample Note", "phone: ": "1234567890"});

            Navigator.push(context, MaterialPageRoute(builder: (context) => MyDummyAddContact()));

            // Logic to save the note
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Note added successfully!')));
          },
          child: Text('Add Note'),
        ),
      ),
    );
  }
}
