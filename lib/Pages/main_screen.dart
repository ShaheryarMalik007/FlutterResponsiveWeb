import 'package:flutter/material.dart';
import 'package:flutter_responsive_web_ui/Pages/side_menu.dart';
import 'package:flutter_responsive_web_ui/Widgets/responsive.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        // Let's work on our mobile part
        mobile: Container(color: Colors.red,),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: Container(color: Colors.red,),
            ),
            Expanded(
              flex: 9,
              child: Container(color: Colors.green,),
            ),
          ],
        ),
        desktop: Row(
          children: [
            // Once our width is less then 1300 then it start showing errors
            // Now there is no error if our width is less then 1340
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: const SideMenu(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              child:Container(color: Colors.red,),
            ),
            Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              child:Container(color: Colors.green,),
            ),
          ],
        ),
      ),
    );
  }
}
