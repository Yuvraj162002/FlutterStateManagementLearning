import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_management_learning/demo_apps/provider_demo_apps/AddNotesScreen.dart';
import 'package:flutter_state_management_learning/state_management/provider/MyDummyAddContactProvider.dart';
import 'package:provider/provider.dart';

class MyDummyAddContact extends StatelessWidget {
  const MyDummyAddContact({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Dummy Contacts'),
        backgroundColor: Colors.amber,
      ),
      body: Consumer<MyDummyAddContactProvider>(
        builder: (newContext, _, _) {
          return Provider.of<MyDummyAddContactProvider>(
                newContext,
              ).contacts.isNotEmpty
              ? ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        '${Provider.of<MyDummyAddContactProvider>(newContext).contacts[index]["name: "]}',
                      ),
                      subtitle: Text(
                        '${Provider.of<MyDummyAddContactProvider>(newContext).contacts[index]["phone: "]}',
                      ),
                      trailing: SizedBox(
                        width: 100,
                        child: IconButton(
                          onPressed: () {
                            // Remove the contact at the specified index.
                            Provider.of<MyDummyAddContactProvider>(
                              newContext,
                              listen: false,
                            ).removeContact(index);
                          },
                          icon: Icon(Icons.delete, color: Colors.blue),
                        ),
                      ),
                    );
                  },

                  separatorBuilder: (context, index) {
                    return Divider(color: Colors.black, thickness: 3);
                  },
                  itemCount: Provider.of<MyDummyAddContactProvider>(
                    newContext,
                    listen: false,
                  ).contacts.length,
                )
              : Center(
                  child: Text(
                    'No Contacts Available',
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the Add Contact screen.

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNotesScreen()),
          );
        },
        tooltip: 'Add Contact',
        child: Icon(Icons.add),
      ),
    );
  }
}
