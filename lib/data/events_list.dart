

class Events {
  Month? month;

  Events({this.month});
}

class Month {
  String? name;
  List<Data>? data;

  Month({this.data,this.name});
}

class Data {
  String? eventName;
  String? day;
  String? dayOfMonth;
  String? img;
  String? beginning;
  String? end;
  String? location;

  Data({
    this.eventName,
    this.img,
    this.beginning,
    this.end,
    this.location,
    this.day,
    this.dayOfMonth,
  });
}

List<Events> eventsList = [
  Events(
    month: Month(
        name: "Jul",
        data: [
          Data(
            eventName: "Ashura",
            beginning: "12:00am",
            end: "11:59 PM",
            img: "https://nationaltoday.com/wp-content/uploads/2020/08/Ashura-1-1200x834.jpg",
            location: "India",
            day: "29",
            dayOfMonth: "sat",
          ),

        ]
    )
  ),
  Events(
    month: Month(
        name: "Aug",
        data: [
          Data(
            eventName: "Independence day",
            beginning: "12:00am",
            end: "11:59 PM",
            img:"https://i.pinimg.com/736x/e2/ba/99/e2ba99415aeb7cb839adb8381ec785c3.jpg",
            location: "India",
            day: "15",
            dayOfMonth: "Tue",
          ),
          Data(
            eventName: "Vinayaka Chathurthi",
            beginning: "12:00 Am",
            end: "11:59 PM",
            img:"https://www.vedantu.com/seo/content-images/995fca49-5864-481e-b1f1-7043d27f7058.jpg",
            location: "India",
            day: "20",
            dayOfMonth: "Sun",
          ),
          Data(
            eventName: "Raksha bandhan",
            beginning: "12:00 Am",
            end: "11:59 PM",
            img:"https://static.punjabkesari.in/multimedia/07_16_491264410raksha-bandhan1.jpg",
            location: "India",
            day: "30",
            dayOfMonth: "Wen",
          )
        ]
    )
  )

];


