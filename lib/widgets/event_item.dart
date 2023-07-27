import 'package:calendar/data/events_list.dart';
import 'package:flutter/material.dart';

class EventItem extends StatelessWidget {
  final Data data;
  EventItem({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(data.day!),
              Text(data.dayOfMonth!),
            ],
          ),
          const SizedBox(width: 16),
          SizedBox(
            height: 150,
            width: 90,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(data.img!,fit: BoxFit.fitHeight),
            ),
          ),

          const SizedBox(width: 16),
          SizedBox(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(data.eventName!),
                const SizedBox(height: 5),
                Text("Beginning:   ${data.beginning!}"),
                Text("End:              ${data.end!}"),
                Text("Location:     ${data.location!}"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
