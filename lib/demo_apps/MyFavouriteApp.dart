import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_management_learning/demo_apps/MyFavouriteAppSecondScreen.dart';
import 'package:flutter_state_management_learning/state_management/provider/MyFavouriteAppProvider.dart';
import 'package:provider/provider.dart';

class MyFavouriteApp extends StatelessWidget {
  const MyFavouriteApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('MyFavouriteApp build called');
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favourite App', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(onPressed: () {
              // Navigate to the second screen when the icon is pressed.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyFavouriteAppSecondScreen(),
                ),
              );
            }, icon: Icon(Icons.favorite, color: Colors.white)),
          ),
        ],
      ),
      body: Consumer<MyFavouriteAppProvider>(
        builder: (newContext, provider, _) {
          print('MyFavouriteApp new build called');
          return ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Items $index'),
                subtitle: Text("This is the subtitle of item $index"),
                trailing: SizedBox(
                  width: 100,
                  child: IconButton(
                    onPressed: () {
                      provider.addFavouriteItem({
                        "title": "Item $index",
                        "subtitle": "This is the subtitles of item $index",
                        "icon": Icons.favorite,
                      });

                      // Navigate to the second screen when the icon is pressed.
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyFavouriteAppSecondScreen(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.blue,
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(color: Colors.black, thickness: 3);
            },
            itemCount: 10,
          );
        },
      ),
    );
  }
}
