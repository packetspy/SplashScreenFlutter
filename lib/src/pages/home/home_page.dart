import 'package:flutter/material.dart';
import 'package:splash_screen_flutter/src/design/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [SystemColors.bg2, SystemColors.bg1],
          tileMode: TileMode.repeated,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
              child: getHomeBody(context))),
    );
  }

  getHomeBody(BuildContext build) {
    final List<String> _listViewData = [
      "1 - A List View with many Text - Here's one!",
      "2 - A List View with many Text - Here's another!",
      "3 - A List View with many Text - Here's more!",
      "4 - A List View with many Text - Here's more!",
    ];

    return GridView.count(
      crossAxisCount: 1,
      padding: EdgeInsets.all(8.0),
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 5.0,
      children: _listViewData
          .map((data) => Card(
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(data),
                )),
              ))
          .toList(),
    );
  }
}
