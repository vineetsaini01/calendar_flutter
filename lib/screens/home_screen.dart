import 'package:calendar/data/events_list.dart';
import 'package:calendar/widgets/event_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: eventsList.length,
        itemBuilder: (context, index) {
          var item = eventsList[index];
          return Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          // Adjust the radius as needed
                          bottomRight:
                              Radius.circular(20), // Adjust the radius as needed
                        ),
                      ),
                      child: Text(
                        item.month!.name!,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    Text("${item.month!.data!.length} Event")
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: item.month!.data!.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    var data = item.month!.data![index];
                    return EventItem(data: data);
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
