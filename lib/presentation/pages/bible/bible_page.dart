import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/pages/bible/widgets/bible_view.dart';
import 'package:tech_in_church/presentation/pages/bible/widgets/new_bible_view%20copy.dart';

class BiblePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);
    return Scaffold(
      backgroundColor: AppColors.appColor,
      appBar: AppBar(
        title: const Text(
          'Bible',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: AppColors.appColor,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.0,
        // bottom: TabBar(
        //     tabs: [
        //       Tab(
        //         icon: Icon(Icons.book),
        //         text: 'Old',
        //       ),
        //       Tab(
        //         icon: Icon(Icons.library_books),
        //         text: 'New',
        //       ),
        //     ],
        //   ),
      ),
      body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            color: Colors.white,
          ),
          child: currentIndex.value == 0
              ? BibleView()
              : NewBibleView(),
        ),
      // TabBarView(
      //   children: [
      //     Container(
      //       decoration: BoxDecoration(
      //         // borderRadius: BorderRadius.only(
      //         //     topLeft: Radius.circular(15),
      //         //     topRight: Radius.circular(15)),
      //         color: Colors.white,
      //       ),
      //       child: BibleView(),
      //     ),
      //     Container(
      //       decoration: BoxDecoration(
      //         // borderRadius: BorderRadius.only(
      //         //     topLeft: Radius.circular(15),
      //         //     topRight: Radius.circular(15)),
      //         color: Colors.white,
      //       ),
      //       child: NewBibleView(),
      //     ),
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int val) {
          currentIndex.value = val;
        },
        currentIndex:
            currentIndex.value, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.book),
            label: 'Old Testament',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.library_books),
            label: 'New Testament',
          ),
        ],
      ),
    );
  }
}
