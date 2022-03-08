import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pagination/pagination.dart';

class Event {
  final String title;
  final String? description;
  final String image;
  final DateTime startDate;
  final DateTime endDate;
  Event(this.title, this.description, this.image, this.startDate, this.endDate);
}

class AEventsPage extends HookWidget {
  Future<List<Event>> pageFetch(int a) async {
    switch (a) {
      case 0:
        return Future.value([
          Event('Title1', 'Description1', 'assets/images/Mask Group 231.png',
              DateTime(2021, 12, 12), DateTime(2021, 12, 14)),
          Event('Title2', 'Description2', 'assets/images/Mask Group 232.png',
              DateTime(2021, 12, 12), DateTime(2021, 12, 14)),
          Event('Title3', 'Description3', 'assets/images/Mask Group 233.png',
              DateTime(2021, 12, 12), DateTime(2021, 12, 14)),
          Event('Title4', 'Description4', 'assets/images/Mask Group 234.png',
              DateTime(2021, 12, 12), DateTime(2021, 12, 14)),
        ]);
      case 4:
        await Future.delayed(Duration(seconds: 4));
        return Future.value([
          Event('Title5', 'Description5', 'assets/images/Mask Group 231.png',
              DateTime(2021, 12, 12), DateTime(2021, 12, 14)),
          Event('Title6', 'Description6', 'assets/images/Mask Group 232.png',
              DateTime(2021, 12, 12), DateTime(2021, 12, 14)),
          Event('Title7', 'Description7', 'assets/images/Mask Group 233.png',
              DateTime(2021, 12, 12), DateTime(2021, 12, 14)),
          Event('Title8', 'Description8', 'assets/images/Mask Group 234.png',
              DateTime(2021, 12, 12), DateTime(2021, 12, 14)),
        ]);
    }
    return Future.value([]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text(
          'Events',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          color: Colors.white,
        ),
        child: PaginationList<Event>(
          // separatorWidget: Container(
          //   height: 0.5,
          //   color: Colors.black,
          // ),
          itemBuilder: (BuildContext context, Event event) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: CircleAvatar(
                              backgroundImage: AssetImage(event.image),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(event.title),
                                SizedBox(
                                  height: 8,
                                ),
                                event.description == null
                                    ? SizedBox()
                                    : Text(
                                        event.description!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2,
                                      )
                              ],
                            ),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.call,
                                color: Colors.grey,
                              ),
                              onPressed: () {}),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Text('Starts :  ${formatDate(event.startDate, [
                          dd,
                          ' ',
                          M,
                          ' ',
                          yyyy
                        ])}',style: Theme.of(context)
                                              .textTheme
                                              .subtitle2,),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Text('Ends :  ${formatDate(event.endDate, [
                          dd,
                          ' ',
                          M,
                          ' ',
                          yyyy
                        ])}',style: Theme.of(context)
                                              .textTheme
                                              .subtitle2,),
                      ),
                    ],
                  ),
                ),
              ),
            );
            // ListTile(
            //   title: Text(event.title),
            //   subtitle: Text(event.description!),
            //   leading: CircleAvatar(
            //     backgroundImage: NetworkImage(event.image),
            //   ),
            //   onTap: () => print(event.title),
            //   // trailing: Icon(
            //   //   Icons.call,
            //   //   color: Colors.green,
            //   // ),
            // );
          },
          pageFetch: pageFetch,
          onError: (dynamic error) => Center(
            child: Text('Something Went Wrong'),
          ),
          onEmpty: Center(
            child: Text('There are no events yet!',style: Theme.of(context).textTheme.subtitle1),
          ),
        ),
      ),
    );
  }
}
