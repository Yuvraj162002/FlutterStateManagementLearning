import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state_management/provider/MyFavouriteAppProvider.dart';

class MyFavouriteAppSecondScreen extends StatelessWidget {
  const MyFavouriteAppSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('MyFavouriteApp second time build called');
    var items = Provider.of<MyFavouriteAppProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favourite Second Screen',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Consumer<MyFavouriteAppProvider>(
        builder: (context, provider, _) {
          return ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items.favouriteItems[index]["title"]),
                subtitle: Text(items.favouriteItems[index]["subtitle"]),
                trailing: SizedBox(
                  width: 100,
                  child: IconButton(
                    onPressed: () {
                      // Remove the item from the favourites list.
                      items.removeFavouriteItem(index);
                      Navigator.pop(
                        context,
                      ); // Navigate back to the previous screen.
                    },
                    icon: const Icon(Icons.favorite, color: Colors.red),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(color: Colors.black, thickness: 3);
            },
            itemCount: items.favouriteItems.length,
          );
        },
      ),
    );
  }
}
